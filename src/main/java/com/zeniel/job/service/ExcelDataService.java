package com.zeniel.job.service;

import com.zeniel.job.dto.UserInfoDto;
import lombok.extern.slf4j.Slf4j;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.*;
import java.util.regex.Pattern;

/**
 * 상담리스트 엑셀(xlsx) 데이터 로드
 * - 첫 행을 헤더로 사용, 각 행을 Map(컬럼명 -> 값) 리스트로 반환
 * - 이름 + 주민등록번호로 행 조회 후 정보(A) 추출
 */
@Slf4j
@Service
public class ExcelDataService {

    @Value("${job.recommendation.excel-path:}")
    private String excelPath;

    /**
     * 엑셀 파일에서 모든 행을 로드 (첫 행 = 헤더)
     * @return 헤더 매핑된 행 리스트 (컬럼명 -> 셀 값 문자열)
     */
    public List<Map<String, String>> loadAllRows() {
        if (excelPath == null || excelPath.isBlank()) {
            log.warn("job.recommendation.excel-path 미설정. 빈 목록 반환.");
            return List.of();
        }

        Path path = Path.of(excelPath);
        if (!Files.isRegularFile(path)) {
            log.warn("엑셀 파일 없음: {}", excelPath);
            return List.of();
        }

        List<Map<String, String>> rows = new ArrayList<>();
        try (InputStream is = new FileInputStream(path.toFile());
             Workbook workbook = new XSSFWorkbook(is)) {

            Sheet sheet = workbook.getSheetAt(0);
            Row headerRow = sheet.getRow(0);
            if (headerRow == null) return rows;

            List<String> headers = new ArrayList<>();
            for (Cell cell : headerRow) {
                headers.add(getCellString(cell));
            }

            for (int i = 1; i <= sheet.getLastRowNum(); i++) {
                Row row = sheet.getRow(i);
                if (row == null) continue;
                Map<String, String> map = new LinkedHashMap<>();
                for (int j = 0; j < headers.size(); j++) {
                    String key = headers.get(j);
                    if (key == null || key.isBlank()) key = "col_" + j;
                    Cell cell = row.getCell(j);
                    map.put(key, getCellString(cell));
                }
                rows.add(map);
            }
            log.info("엑셀 로드 완료: {} 행 (헤더 제외)", rows.size());
        } catch (IOException e) {
            log.error("엑셀 로드 실패: {}", path, e);
        }
        return rows;
    }

    /** 이름 + 주민등록번호로 엑셀에서 해당 행 1건 조회 (없으면 empty) */
    public Optional<Map<String, String>> findRowByNameAndResidentNo(String name, String residentNo) {
        if (name == null || name.isBlank() || residentNo == null || residentNo.isBlank()) {
            return Optional.empty();
        }
        List<Map<String, String>> rows = loadAllRows();
        if (rows.isEmpty()) return Optional.empty();

        String normalizedInputRrn = normalizeResidentNo(residentNo);
        String normalizedInputName = name.trim();

        for (Map<String, String> row : rows) {
            String rowName = findCellValueByHeaderHint(row, List.of("이름", "성명", "이 름"));
            String rowRrn = findCellValueByHeaderHint(row, List.of("주민등록번호", "주민번호", "주민앞", "주민뒤"));
            if (rowName == null) rowName = "";
            if (rowRrn == null) rowRrn = "";
            if (normalizedInputName.equals(rowName.trim()) && matchesResidentNo(normalizedInputRrn, normalizeResidentNo(rowRrn))) {
                return Optional.of(row);
            }
        }
        return Optional.empty();
    }

    /** 행에서 정보(A) 추출: 나이, 성별, 역량, 희망직종, 상담내역, 주소, 학교, 전공, 최종학력 */
    public UserInfoDto extractUserInfoFromRow(Map<String, String> row) {
        return UserInfoDto.builder()
            .age(findCellValueByHeaderHint(row, List.of("나이")))
            .gender(findCellValueByHeaderHint(row, List.of("성별")))
            .competency(findCellValueByHeaderHint(row, List.of("역량")))
            .desiredJob(findCellValueByHeaderHint(row, List.of("희망직종", "희망 직종")))
            .counselingNote(findCellValueByHeaderHint(row, List.of("상담내역", "상담 내역")))
            .address(findCellValueByHeaderHint(row, List.of("주소")))
            .school(findCellValueByHeaderHint(row, List.of("학교")))
            .major(findCellValueByHeaderHint(row, List.of("전공")))
            .educationLevel(findCellValueByHeaderHint(row, List.of("최종학력", "학력")))
            .build();
    }

    /** 헤더 후보 중 행에 있으면 해당 셀 값 반환 (대소문자 무시, 공백 정규화) */
    private String findCellValueByHeaderHint(Map<String, String> row, List<String> headerCandidates) {
        String key = findHeaderKey(row, headerCandidates);
        return key != null ? nullToEmpty(row.get(key)) : null;
    }

    private String findHeaderKey(Map<String, String> row, List<String> headerCandidates) {
        Set<String> rowKeys = row.keySet();
        for (String candidate : headerCandidates) {
            String c = candidate == null ? "" : candidate.trim();
            if (c.isEmpty()) continue;
            for (String k : rowKeys) {
                if (k != null && k.trim().equalsIgnoreCase(c)) return k;
                if (k != null && k.trim().replaceAll("\\s+", "").equalsIgnoreCase(c.replaceAll("\\s+", ""))) return k;
            }
        }
        return null;
    }

    private static final Pattern NON_DIGIT = Pattern.compile("\\D");

    private static String normalizeResidentNo(String value) {
        if (value == null) return "";
        return NON_DIGIT.matcher(value).replaceAll("").trim();
    }

    private static boolean matchesResidentNo(String inputNormalized, String rowNormalized) {
        if (inputNormalized.isEmpty() || rowNormalized.isEmpty()) return false;
        if (inputNormalized.equals(rowNormalized)) return true;
        if (inputNormalized.length() >= 7 && rowNormalized.length() >= 7
            && inputNormalized.endsWith(rowNormalized.substring(rowNormalized.length() - 7))) return true;
        if (rowNormalized.length() >= 7 && inputNormalized.length() >= 7
            && rowNormalized.endsWith(inputNormalized.substring(inputNormalized.length() - 7))) return true;
        return false;
    }

    private static String nullToEmpty(String s) {
        return s == null ? "" : s;
    }

    private static String getCellString(Cell cell) {
        if (cell == null) return "";
        return switch (cell.getCellType()) {
            case STRING -> cell.getStringCellValue();
            case NUMERIC -> {
                if (DateUtil.isCellDateFormatted(cell)) {
                    yield cell.getLocalDateTimeCellValue().toLocalDate().toString();
                }
                double n = cell.getNumericCellValue();
                yield (n == (long) n) ? String.valueOf((long) n) : String.valueOf(n);
            }
            case BOOLEAN -> String.valueOf(cell.getBooleanCellValue());
            case FORMULA -> {
                try {
                    yield String.valueOf(cell.getNumericCellValue());
                } catch (Exception e) {
                    yield cell.getCellFormula();
                }
            }
            default -> "";
        };
    }
}
