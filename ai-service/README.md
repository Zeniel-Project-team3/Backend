# AI Service Local DB (pgvector)

## Start database

```bash
cd /home/kosa/Backend/ai-service
docker compose up -d
```

## Check database is running

```bash
docker compose ps
docker exec -it pgvector psql -U postgres -d postgres -c "SELECT extname FROM pg_extension WHERE extname = 'vector';"
```

## Load seed data (optional)

```bash
docker exec -i pgvector psql -U postgres -d postgres < /home/kosa/Backend/src/main/java/com/zeniel/utility/generate_embed_column.sql
```

## Match `.env` for FastAPI

Use one of these in `/home/kosa/Backend/ai-service/.env`.

```env
DB_URL=127.0.0.1:5432/postgres
DB_USERNAME=postgres
DB_PASSWORD=postgres
```

## Response speed and Korean output

```env
# LLM is always enabled. Use quick mode for speed.
LLM_MODE=quick
LLM_MAX_CASES=3
LLM_MAX_OUTPUT_TOKENS=220
OPENAI_TIMEOUT_SECONDS=12
```

Korean text can look escaped when pretty-printing with `python -m json.tool`.
Use `jq` to keep readable UTF-8:

```bash
curl -s -X POST "http://localhost:8001/api/v1/recommend" \
  -H "Content-Type: application/json" \
  -d '{"clientId":1,"topK":5}' | jq .
```

or

```env
DB_HOST=127.0.0.1
DB_PORT=5432
DB_NAME=postgres
DB_USER=postgres
DB_PASSWORD=postgres
```

## Docker로 배포 후 Java에서 호출

1. 이미지 빌드 및 실행

```bash
cd /home/kosa/Backend/ai-service
docker build -t ai-recommendation-service .
docker run -d -p 8001:8001 --env-file .env ai-recommendation-service
```

2. Java에서 JSON으로 요청/응답

- **요청:** `POST http://<AI서버호스트>:8001/api/v1/recommend`
- **Request Body (JSON):** `{"clientId": 123, "topK": 5}`
- **Response (JSON):** `AiResponseDto` 형태 (clientId, maskedInput, queryText, similarCases, recommendation)

예시 (Spring `RestClient` / `WebClient`):

```java
// RestClient
AiRequestDto request = new AiRequestDto(123, 5);
AiResponseDto response = restClient.post()
    .uri("http://ai-service-host:8001/api/v1/recommend")
    .body(request)
    .retrieve()
    .body(AiResponseDto.class);
```

Docker로 띄운 뒤 같은 네트워크면 `ai-service-host` 대신 컨테이너명/서비스 URL을 쓰면 된다.
