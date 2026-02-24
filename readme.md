## 제니엘 단기 프로젝트 3조

---
준비중입니다...

### 직업/훈련과정 추천 API (상담리스트 + GPT)

**흐름:** 사용자가 **이름 + 주민등록번호**를 입력 → 엑셀에서 해당 행을 찾아 **정보(A)** 추출 → A를 GPT에 넘겨 추천 생성 → **A와 추천 결과(output)** 를 사용자에게 함께 노출.

**엔드포인트:** `POST /api/recommend`

**요청 body (JSON) – 두 가지 방식**

| 필드 | 설명 |
|------|------|
| **name** | 이름 (엑셀 조회 시 사용) |
| **residentNo** | 주민등록번호 (엑셀 조회 시 사용) |
| age | 나이 (이름+주민번호 없이 직접 입력 시) |
| gender | 성별 |
| competency | 역량 |
| desiredJob | 희망직종 |
| counselingNote | 상담내역 |
| address | 주소 |
| school | 학교 |
| major | 전공 |
| educationLevel | 최종학력 |

- **방식 1:** `name` + `residentNo`만 보내면, 엑셀에서 해당 행을 찾아 **나이·성별·역량·희망직종·상담내역·주소·학교·전공·최종학력(A)** 을 자동 추출합니다.
- **방식 2:** 이름/주민번호 없이 위 A 필드들을 직접 입력할 수도 있습니다.

**응답 (JSON) – 사용자에게 A + output 노출**
- **`extractedUserInfo`**: 사용자에게 보여줄 정보 A (나이, 성별, 역량, 희망직종, 상담내역, 주소, 학교, 전공, 최종학력). 엑셀에서 추출했거나 요청으로 받은 값.
- `message`: 조회 실패 시 안내 문구 (예: "해당 이름·주민등록번호로 조회된 데이터가 없습니다").
- `recommendedCourseName`: 개인별 추천 직업훈련과정명
- `employedJobType`: 취업 가능 직종
- `salaryLevel`: 급여수준
- `employers`: 취업처 목록 (배열)
- **`top5Similar`**: 엑셀에서 임베딩 유사도로 찾은 유사 케이스 Top5.

**설정 (application.properties 또는 환경변수):**
- `spring.ai.openai.api-key` 또는 `OPENAI_API_KEY`: OpenAI API 키
- `job.recommendation.excel-path` 또는 `JOB_EXCEL_PATH`: 상담리스트 엑셀 파일 경로 (예: `c:/Users/honor/Downloads/Backend/22222상담리스트_가공데이터_202602_header_fixed (1).xlsx`)