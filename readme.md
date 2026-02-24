## 제니엘 단기 프로젝트 3조

---
개발중...
---
## 프로젝트 설치 가이드
1. 도커 설치 후 아래 명령어 입력
```shell
docker run `
--name pgvector `
-d `
-p 5432:5432 `
-e POSTGRES_USER=postgres `
-e POSTGRES_PASSWORD=postgres `
-v pgdata:/var/lib/postgresql/data `
pgvector/pgvector:pg17
```
2. DB 연결 후 아래 명령어 입력해야함
```sql
CREATE EXTENSION IF NOT EXISTS vector;
```
3. .env.sample -> .env 로 이름 변경