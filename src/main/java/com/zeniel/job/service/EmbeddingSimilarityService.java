package com.zeniel.job.service;

import com.zeniel.job.dto.SimilarCaseItem;
import lombok.extern.slf4j.Slf4j;
import org.springframework.ai.embedding.EmbeddingModel;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.nio.file.Files;
import java.nio.file.Path;
import java.util.*;
import java.util.stream.Collectors;

/**
 * 엑셀 행을 임베딩하고, 요청 텍스트와 코사인 유사도로 Top-K 유사 행 추출
 */
@Slf4j
@Service
public class EmbeddingSimilarityService {

    private static final int BATCH_SIZE = 50;
    private static final int TOP_K = 5;

    private final EmbeddingModel embeddingModel;
    private final ExcelDataService excelDataService;

    @Value("${job.recommendation.excel-path:}")
    private String excelPath;

    /** 캐시: (excel 경로 + lastModified) -> 행별 임베딩 */
    private volatile String cacheKey;
    private volatile List<RowWithEmbedding> cachedRows;

    public EmbeddingSimilarityService(EmbeddingModel embeddingModel, ExcelDataService excelDataService) {
        this.embeddingModel = embeddingModel;
        this.excelDataService = excelDataService;
    }

    /**
     * 요청 내용과 유사한 엑셀 행 상위 5건 반환 (임베딩 + 코사인 유사도)
     */
    public List<SimilarCaseItem> findTop5Similar(String queryText) {
        if (queryText == null || queryText.isBlank()) {
            return List.of();
        }
        List<RowWithEmbedding> rows = getOrComputeRowEmbeddings();
        if (rows.isEmpty()) {
            return List.of();
        }
        try {
            float[] queryEmbedding = embeddingModel.embed(queryText);
            List<SimilarCaseItem> scored = new ArrayList<>();
            for (RowWithEmbedding r : rows) {
                double sim = cosineSimilarity(queryEmbedding, r.embedding);
                scored.add(SimilarCaseItem.builder()
                    .similarityScore(sim)
                    .row(r.row)
                    .build());
            }
            return scored.stream()
                .sorted(Comparator.comparingDouble(SimilarCaseItem::getSimilarityScore).reversed())
                .limit(TOP_K)
                .collect(Collectors.toList());
        } catch (Exception e) {
            log.warn("임베딩 유사도 조회 실패: {}", e.getMessage());
            return List.of();
        }
    }

    private List<RowWithEmbedding> getOrComputeRowEmbeddings() {
        if (excelPath == null || excelPath.isBlank()) return List.of();
        Path path = Path.of(excelPath);
        if (!Files.isRegularFile(path)) return List.of();

        String newKey;
        try {
            newKey = path.toAbsolutePath().toString() + "|" + Files.getLastModifiedTime(path).toMillis();
        } catch (Exception e) {
            newKey = path.toAbsolutePath().toString();
        }
        if (newKey.equals(cacheKey) && cachedRows != null) {
            return cachedRows;
        }

        List<Map<String, String>> rows = excelDataService.loadAllRows();
        if (rows.isEmpty()) return List.of();

        List<String> texts = rows.stream()
            .map(this::rowToEmbeddableText)
            .toList();
        if (texts.stream().allMatch(String::isBlank)) return List.of();

        try {
            List<float[]> embeddings = embedInBatches(texts);
            if (embeddings.size() != rows.size()) {
                log.warn("임베딩 개수 불일치: rows={}, embeddings={}", rows.size(), embeddings.size());
                return List.of();
            }
            List<RowWithEmbedding> result = new ArrayList<>();
            for (int i = 0; i < rows.size(); i++) {
                result.add(new RowWithEmbedding(rows.get(i), embeddings.get(i)));
            }
            cacheKey = newKey;
            cachedRows = result;
            log.info("엑셀 행 임베딩 캐시 갱신: {} 건", result.size());
            return result;
        } catch (Exception e) {
            log.error("엑셀 행 임베딩 실패: {}", e.getMessage());
            return List.of();
        }
    }

    private String rowToEmbeddableText(Map<String, String> row) {
        return row.entrySet().stream()
            .filter(e -> e.getValue() != null && !e.getValue().isBlank())
            .map(e -> e.getKey() + " " + e.getValue())
            .collect(Collectors.joining(" "));
    }

    private List<float[]> embedInBatches(List<String> texts) {
        List<float[]> all = new ArrayList<>();
        for (int i = 0; i < texts.size(); i += BATCH_SIZE) {
            int end = Math.min(i + BATCH_SIZE, texts.size());
            List<String> batch = texts.subList(i, end);
            List<float[]> batchResult = embeddingModel.embed(batch);
            all.addAll(batchResult);
        }
        return all;
    }

    private static double cosineSimilarity(float[] a, float[] b) {
        if (a.length != b.length) return 0;
        double dot = 0, normA = 0, normB = 0;
        for (int i = 0; i < a.length; i++) {
            dot += (double) a[i] * b[i];
            normA += (double) a[i] * a[i];
            normB += (double) b[i] * b[i];
        }
        double denom = Math.sqrt(normA) * Math.sqrt(normB);
        return denom <= 0 ? 0 : dot / denom;
    }

    private record RowWithEmbedding(Map<String, String> row, float[] embedding) {}
}
