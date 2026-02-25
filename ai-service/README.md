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
