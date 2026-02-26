-- Generated from 22222상담리스트_가공데이터_202602_header_fixed (1).xlsx
-- Assumption: table/column names follow Spring Boot default snake_case naming.
-- BaseTimeEntity columns are omitted. Add defaults or extra columns if your schema requires them.
-- embedding is NULL for all clients, consultation.summary is NULL for all consultations.

BEGIN;

-- clients
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (1, '정태현', DATE '1990-02-26', '9002261652975', '01070792137', 35, 'MALE', 'COLLEGE', 'Ⅰ', '청년특례', '이관', 'C', '편집디자이너 영상편집 음악강사', '울산광역시 남구 삼산로 76 109동 247호', '동아방송예술대학교', '음향제작과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (2, '서가은', DATE '1999-06-18', '9906182423279', '01014034554', 26, 'FEMALE', 'UNIVERSITY', 'Ⅱ', '청년층', '만종', 'C', '기획/ 마케팅', '울산광역시 울주군 덕신로 172 112동 965호', '울산대학교', '전기전자정보시스템공학부', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (3, '한은우', DATE '1976-01-04', '7601043616972', '01035663744', 50, 'MALE', 'HIGH_SCHOOL', 'Ⅱ', '중장년층', '만종', 'C', '바리스타 제빵', '울산광역시 남구 삼산로 63 110동 231호', '다인종합고등학교', '인문계', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (4, '임민준', DATE '1991-05-22', '9105224185899', '01040254081', 34, 'FEMALE', 'UNIVERSITY', 'Ⅰ', '청년특례', '본인', 'C', '청소년지도사 바리스타 직업상담사', '울산광역시 울주군 언양로 146 115동 1376호', '울산대학교', '사회.복지학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (5, '권도윤', DATE '1990-05-09', '9005091851016', '01011522568', 35, 'MALE', 'COLLEGE', 'Ⅱ', '특정계층', '본인', 'C', '애견미용사 지게차운전원 바리스타', '울산광역시 중구 번영로 200 102동 1170호', '서라벌대학교', '회계학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (6, '한예준', DATE '1994-06-18', '9406183322984', '01018565169', 31, 'MALE', 'HIGH_SCHOOL', 'Ⅱ', '청년층', '본인', 'D', '자동차정비원 생산직', '울산광역시 울주군 언양로 182 105동 1479호', '울산생활과학고등학교', '인테리어학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (7, '강시우', DATE '1994-09-28', '9409284271688', '01068799519', 31, 'FEMALE', 'COLLEGE', 'Ⅰ', '청년특례', '만종', 'C', '지게차운전원 생산직', '울산광역시 남구 수암로 139 101동 151호', '울산과학대학교', '컴퓨터공학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (8, '강지민', DATE '1999-08-07', '9908072468193', '01074295285', 26, 'FEMALE', 'UNIVERSITY', 'Ⅰ', '청년특례', '본인', 'D', '광고 마케팅 광고 디자인', '울산광역시 북구 산하중앙로 30 117동 765호', '영산대학교', '광고홍보학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (9, '신채원', DATE '1993-12-25', '9312251983678', '01096939405', 32, 'MALE', 'HIGH_SCHOOL', 'Ⅰ', '청년특례', '본인', 'C', '간호조무사', '울산광역시 동구 봉수로 31 103동 111호', '현대고등학교', '인문계', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (10, '장현우', DATE '1990-10-03', '9010032813119', '01023871804', 35, 'FEMALE', 'UNIVERSITY', 'Ⅰ', '청년특례', '이관', 'C', '경리사무원 일반사무원', '울산광역시 중구 옥교로 65 109동 530호', '대경대학교', '음학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (11, '김은우', DATE '1998-04-17', '9804172360780', '01073565436', 27, 'FEMALE', 'COLLEGE', 'Ⅰ', '청년특례', '만종', 'C', '생산직 바리스타 제빵', '울산광역시 남구 번영로 123 103동 761호', '울산과학대학교', '식품영양학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (12, '신하은', DATE '1997-05-01', '9705014173470', '01098639317', 28, 'FEMALE', 'UNIVERSITY', 'Ⅱ', '청년층', '본인', 'D', '경리사무원', '울산광역시 중구 중앙길 77 113동 945호', '단국대학교', '행정학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (13, '박다은', DATE '1990-08-17', '9008173504131', '01027715196', 35, 'MALE', 'HIGH_SCHOOL', 'Ⅰ', '청년특례', '만종', 'C', '제빵사무원', '울산광역시 남구 삼산로 1 101동 345호', '생활과학고등학교', '식품영양학', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (14, '강은우', DATE '1995-10-26', '9510261420105', '01071739614', 30, 'MALE', 'HIGH_SCHOOL', 'Ⅱ', '청년층', '본인', 'C', '간호조무사', '울산광역시 동구 화진길 72 107동 164호', '한일전신여고', '인문계', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (15, '최다은', DATE '1974-01-03', '7401034845489', '01019264461', 52, 'FEMALE', 'UNIVERSITY', 'Ⅱ', '특정계층', '이관', 'D', '제빵사무원 미용사', '울산광역시 중구 중앙길 97 101동 715호', '경주대학교', '고고학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (16, '임지훈', DATE '1994-06-09', '9406091470089', '01066317196', 31, 'MALE', 'UNIVERSITY', 'Ⅰ', '청년특례', '만종', 'C', '사무보조 총무 및 일반사무원', '울산광역시 북구 천곡길 33 101동 804호', '경성대학교', '일어학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (17, '신예준', DATE '1994-05-17', '9405173576251', '01063441536', 31, 'MALE', 'UNIVERSITY', 'Ⅰ', '청년특례', '본인', 'D', '국어교사 사무직', '울산광역시 동구 화진길 62 103동 531호', '한동대학교', '국제지역학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (18, '임서연', DATE '1998-11-01', '9811013711515', '01050495758', 27, 'MALE', 'COLLEGE', 'Ⅰ', '청년특례', '본인', 'C', '설계직 바리스타 사무', '울산광역시 북구 산하중앙로 162 119동 1169호', '울산과학대학(동부캠퍼스)', '건축학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (19, '권도윤', DATE '1995-02-24', '9502242171685', '01018614568', 31, 'FEMALE', 'UNIVERSITY', 'Ⅰ', '청년특례', '만종', 'C', '바리스타', '울산광역시 울주군 덕신로 165 109동 1186호', '동국대학교', '영어학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (20, '신시우', DATE '1973-03-13', '7303132285181', '01078053647', 52, 'FEMALE', 'UNIVERSITY', 'Ⅱ', '중장년층', '본인', 'C', '경리사무원 회계사무원 인테리어디자이너', '울산광역시 남구 삼산로 75 101동 1230호', '부산대학교 대학원 (대학원(석사)졸업)', '행정학', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (21, '정지우', DATE '1994-02-18', '9402182648411', '01067937059', 32, 'FEMALE', 'UNIVERSITY', 'Ⅱ', '특정계층', '본인', 'D', '경리사무원 법률사무원', '울산광역시 중구 번영로 179 119동 945호', '거제대학교', '비즈니스 외국어학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (22, '한다은', DATE '1998-08-04', '9808044807440', '01016258487', 27, 'FEMALE', 'COLLEGE', 'Ⅱ', '특정계층', '파견업', 'D', '경리사무원,법률사무원', '울산광역시 남구 삼산로 57 119동 1067호', '거제대학교', '비지니스외국어학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (23, '강다은', DATE '1971-11-07', '7111073225578', '01086533510', 54, 'MALE', 'HIGH_SCHOOL', 'Ⅱ', '특정계층', '본인', 'C', '용접원 단순종사원', '울산광역시 동구 대송로 73 119동 172호', '경북과학기술고등학교', NULL, NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (24, '정태현', DATE '1980-07-13', '8007132966990', '01083611363', 45, 'FEMALE', 'HIGH_SCHOOL', 'Ⅱ', '특정계층', '본인', 'C', '간호조무사', '울산광역시 북구 매곡로 133 111동 128호', '방어진고등학교', NULL, NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (25, '김다은', DATE '1974-12-07', '7412072758098', '01065276426', 51, 'FEMALE', 'UNIVERSITY', 'Ⅱ', '중장년층', '본인', 'C', '보육교사', '울산광역시 중구 번영로 66 108동 1420호', '동국대학교', '유아교육학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (26, '서수민', DATE '1999-08-10', '9908101567571', '01018843695', 26, 'MALE', 'COLLEGE', 'Ⅱ', '청년층', '본인', 'D', '간호사', '울산광역시 북구 매곡로 196 106동 440호', '위덕대학교', '간호학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (27, '신태현', DATE '1986-07-07', '8607072770336', '01019822153', 39, 'FEMALE', 'HIGH_SCHOOL', 'Ⅱ', '특정계층', '만종', 'C', '건설 채굴 단순 종사원 임업 청소원', '울산광역시 남구 삼산로 146 114동 601호', '영주고등학교', '인문계', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (28, '장예준', DATE '1994-07-10', '9407102389981', '01038195936', 31, 'FEMALE', 'UNIVERSITY', 'Ⅱ', '청년층', '본인', 'D', '공공행정 인사사무원 총무사무원', '울산광역시 울주군 언양로 65 116동 1290호', '동아대학교', '경영학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (29, '최태현', DATE '1991-04-22', '9104222999930', '01057653490', 34, 'FEMALE', 'UNIVERSITY', 'Ⅱ', '청년층', '본인', 'D', '안전관리자', '울산광역시 남구 삼산로 6 110동 1384호', '울산대학교', '산업공학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (30, '한수민', DATE '1996-01-13', '9601133731544', '01050838853', 30, 'MALE', 'UNIVERSITY', 'Ⅱ', '청년층', '알선', 'D', '지게차운전원', '울산광역시 남구 삼산로 103 109동 316호', '대경대학교', '식품영양학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (31, '박채원', DATE '1971-10-25', '7110252551897', '01088629959', 54, 'FEMALE', 'MIDDLE_SCHOOL', 'Ⅱ', '중장년층', '알선', 'D', '버스운전원', '울산광역시 동구 대송로 109 103동 656호', '신선국민학교', NULL, NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (32, '임서윤', DATE '1971-01-27', '7101272632077', '01070614912', 55, 'FEMALE', 'COLLEGE', 'Ⅱ', '특정계층', '만종', 'D', '바리스타 제빵', '울산광역시 중구 옥교로 189 117동 1214호', '영남이공대학교', '간호학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (33, '한현우', DATE '1975-11-14', '7511143295823', '01013728454', 50, 'MALE', 'UNIVERSITY', 'Ⅱ', '특정계층', '본인', 'C', '사무직 생산직', '울산광역시 남구 번영로 75 109동 179호', '동명대학교', '심리학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (34, '권예준', DATE '1970-06-25', '7006254345889', '01050023698', 55, 'FEMALE', 'MIDDLE_SCHOOL', 'Ⅱ', '특정계층', '파견업', 'C', '요양보호사', '울산광역시 북구 매곡로 125 109동 298호', '송도중학교', NULL, NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (35, '정현우', DATE '1997-07-14', '9707141945985', '01039976972', 28, 'MALE', 'UNIVERSITY', 'Ⅰ', '청년특례', '파견업', 'C', '영양사 경영지원사무워 인사', '울산광역시 동구 화진길 95 106동 1290호', '울산대학교', '식품영양학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (36, '최시우', DATE '1993-11-21', '9311214578982', '01022071204', 32, 'FEMALE', 'HIGH_SCHOOL', 'Ⅰ', '청년특례', '만료', 'C', '제조 단순종사원 자동차 부품 조립 및 검사원', '울산광역시 중구 학성로 145 104동 192호', '울산경영정보고', '정보 통신학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (37, '신채원', DATE '1971-11-07', '7111071500109', '01024879026', 54, 'MALE', 'UNIVERSITY', 'Ⅱ', '중장년층', '중단', 'C', '제빵 바리스타', '울산광역시 북구 산하중앙로 122 108동 1385호', '경남대학교', '물리학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (38, '오수민', DATE '1995-03-18', '9503184158141', '01024004231', 30, 'FEMALE', 'UNIVERSITY', 'Ⅰ', '청년특례', '본인', 'D', '사무직', '울산광역시 남구 수암로 30 112동 379호', '한국외국어대학교', '기타 아시아어·문학', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (39, '장유진', DATE '1998-11-08', '9811083225435', '01038271588', 27, 'MALE', 'UNIVERSITY', 'Ⅰ', '청년특례', '만료', 'D', '청소원 주방보조', '울산광역시 남구 삼산로 122 103동 1313호', '중국대학교', '기타', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (40, '윤유진', DATE '1991-07-19', '9107192238748', '01017759476', 34, 'FEMALE', 'COLLEGE', 'Ⅱ', '청년층', '이관', 'C', '총무 및 일반사무원 경리사무원 일반사업체 전산자료 입력원 및 사무 보조원', '울산광역시 울주군 온산로 1 114동 377호', '대구미래대학교', '영상·예술', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (41, '장지우', DATE '1996-08-06', '9608064179371', '01088998838', 29, 'FEMALE', 'HIGH_SCHOOL', 'Ⅰ', '청년특례', '중단', 'D', '미디어 콘텐츠 디자이너', '울산광역시 북구 천곡길 97 114동 851호', '호계고등학교', '인문계', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (42, '박지훈', DATE '1997-08-09', '9708093983294', '01036696117', 28, 'MALE', 'COLLEGE', 'Ⅰ', '청년특례', '만종', 'C', '총무 및 일반 사무원 직종', '울산광역시 울주군 언양로 199 105동 435호', '춘해보건대학교', '치위생학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (43, '김하은', DATE '1990-09-28', '9009282263502', '01049348157', 35, 'FEMALE', 'UNIVERSITY', 'Ⅰ', '청년특례', '본인', 'C', '일반 사무원', '울산광역시 중구 중앙길 12 104동 1299호', '위덕대학교', '항공관광학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (44, '최현우', DATE '1991-08-24', '9108242228872', '01021705775', 34, 'FEMALE', 'UNIVERSITY', 'Ⅰ', '청년특례', '본인', 'D', '간호사', '울산광역시 남구 수암로 200 120동 1042호', '신라대학교', '간호학', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (45, '조하린', DATE '1994-06-16', '9406162439885', '01086293741', 31, 'FEMALE', 'UNIVERSITY', 'Ⅰ', '청년특례', '본인', 'C', '생산·품질 사무원 및 관리원(화학·섬유·의료) 직종', '울산광역시 중구 학성로 68 114동 1204호', '계명대학교', '화학공학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (46, '박현우', DATE '1992-12-09', '9212094629640', '01038727852', 33, 'FEMALE', 'COLLEGE', 'Ⅰ', '청년특례', '만종', 'C', '경리사무원', '울산광역시 북구 천곡길 39 114동 1083호', '동원과학기술대학', '제과제빵', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (47, '신수민', DATE '1997-08-25', '9708253931066', '01021641102', 28, 'MALE', 'UNIVERSITY', 'Ⅰ', '청년특례', '중단', 'C', '일러스트 삽화가', '울산광역시 동구 방어진순환도로 177 107동 1083호', '영남대학교', '회화과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (48, '오다은', DATE '1972-03-18', '7203183478211', '01015877856', 53, 'MALE', 'UNIVERSITY', 'Ⅰ', '청년특례', '본인', 'D', '산업 안전원 및 위험물 관리원 직종', '울산광역시 중구 옥교로 11 105동 693호', '동의대학교', '생명공학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (49, '서서윤', DATE '1996-12-19', '9612191985288', '01014002068', 29, 'MALE', 'UNIVERSITY', 'Ⅰ', '청년특례', '본인', 'D', '영양사', '울산광역시 울주군 덕신로 196 115동 1324호', '울산대학교', '식품영양학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (50, '권은우', DATE '1974-02-04', '7402042838407', '01041677997', 52, 'FEMALE', 'HIGH_SCHOOL', 'Ⅱ', '중장년층', '파견업', 'D', '생산직', '울산광역시 남구 왕생로 83 117동 359호', '포항여자전자고등학교', '산업디자인전공', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (51, '장수민', DATE '1994-10-26', '9410262744197', '01047213703', 31, 'FEMALE', 'COLLEGE', 'Ⅰ', '청년특례', '만종', 'C', '게임 디자이너', '울산광역시 동구 대송로 42 104동 1272호', '한국영상대학교', '응용 소프트웨어 공학', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (52, '강예준', DATE '1993-01-21', '9301212229545', '01049769745', 33, 'FEMALE', 'COLLEGE', 'Ⅰ', '청년특례', '본인', 'C', '수영·골프·테니스·배드민턴·탁구 등 스포츠 강사 직종, 화물차·특수차 운전원 직종', '울산광역시 중구 학성로 3 111동 691호', '대경대학교', '경찰행정학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (53, '한채원', DATE '1997-04-25', '9704253101966', '01053518024', 28, 'MALE', 'UNIVERSITY', 'Ⅰ', '청년특례', '본인', 'D', '사무', '울산광역시 동구 대송로 138 108동 506호', '동의대학교', '경영정보학', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (54, '김유진', DATE '1995-01-10', '9501104103769', '01087153144', 31, 'FEMALE', 'HIGH_SCHOOL', 'Ⅰ', '청년특례', '중단', 'C', '시설 요양보호사 재가 요양보호사 상점 판매원 직종', '울산광역시 북구 산하중앙로 72 107동 249호', '한국생명과학고등학교', '식량자원학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (55, '최태현', DATE '1978-01-23', '7801231616350', '01036571672', 48, 'MALE', 'HIGH_SCHOOL', 'Ⅱ', '중장년층', '본인', 'C', '내선 전기공(건물 내 전기공사원) 직종', '울산광역시 울주군 온산로 178 101동 949호', '검정고시', '인문계', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (56, '권지훈', DATE '1980-05-04', '8005043375476', '01047834371', 45, 'MALE', 'UNIVERSITY', 'Ⅱ', '특정계층', '만료', 'C', 'CAD 기계설계 회계사무원 경리 사무원', '울산광역시 북구 매곡로 53 118동 1438호', '에듀사이버대학교', '사회복지학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (57, '권현우', DATE '1998-02-04', '9802042201641', '01098372776', 28, 'FEMALE', 'UNIVERSITY', 'Ⅱ', '청년층', '만종', 'D', '재활보조', '울산광역시 동구 화진길 76 108동 264호', '대구대학교', '직업재활학', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (58, '장하린', DATE '1993-02-08', '9302082549649', '01016128480', 33, 'FEMALE', 'COLLEGE', 'Ⅰ', '청년특례', '파견업', 'D', '비서', '울산광역시 북구 호계로 54 117동 954호', '인하공업전문대학', '비서학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (59, '신민준', DATE '1996-03-09', '9603094280155', '01067917574', 29, 'FEMALE', 'HIGH_SCHOOL', 'Ⅱ', '청년층', '중단', 'C', NULL, '울산광역시 동구 화진길 38 113동 257호', '울산범서고', NULL, NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (60, '최채원', DATE '1996-03-01', '9603013525940', '01036622129', 29, 'MALE', 'HIGH_SCHOOL', 'Ⅰ', '청년특례', '중단', 'C', NULL, '울산광역시 중구 옥교로 176 117동 379호', '경산여자상업고등학교', NULL, NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (61, '강다은', DATE '1991-12-22', '9112224352113', '01088297877', 34, 'FEMALE', 'COLLEGE', 'Ⅱ', '청년층', '만종', 'D', '기계·금속·비금속 제조 관리자(공장장)', '울산광역시 남구 번영로 115 119동 543호', '한국폴리텍대학 대전캠퍼스', '기계공학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (62, '오지훈', DATE '1979-04-13', '7904134962907', '01036716198', 46, 'FEMALE', 'UNIVERSITY', 'Ⅱ', '특정계층', '만종', 'D', '사무직', '울산광역시 남구 수암로 79 101동 443호', '한국방송통신대학교', '산업공학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (63, '임서연', DATE '1986-02-20', '8602202844514', '01016096032', 40, 'FEMALE', 'HIGH_SCHOOL', 'Ⅱ', '특정계층', '본인', 'C', '용접원', '울산광역시 울주군 온산로 101 105동 1081호', '검정고시', '인문계', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (64, '장민준', DATE '1974-10-20', '7410202520209', '01015896230', 51, 'FEMALE', 'COLLEGE', 'Ⅱ', '특정계층', '만료', 'D', '바리스타 간호조무사 제빵', '울산광역시 울주군 온산로 8 104동 191호', '서라벌대학교', '식품영양학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (65, '이서연', DATE '1995-12-02', '9512021545934', '01026859987', 30, 'MALE', 'UNIVERSITY', 'Ⅱ', '청년층', '만료', 'C', '제품디자이너 시각디자이너', '울산광역시 동구 화진길 179 118동 1150호', '대구가톨릭대학교', '산업디자인학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (66, '신서연', DATE '1992-09-22', '9209224551137', '01048294215', 33, 'FEMALE', 'COLLEGE', 'Ⅰ', '청년특례', '본인', 'C', '보육교사', '울산광역시 울주군 덕신로 190 107동 1426호', '울산과학대학교', '유야교육학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (67, '조수민', DATE '1997-07-11', '9707112802158', '01054442875', 28, 'FEMALE', 'HIGH_SCHOOL', 'Ⅰ', '청년특례', '본인', 'D', '영상편집 사무보조', '울산광역시 울주군 범서로 124 119동 1193호', '검정고시', '인문계', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (68, '강다은', DATE '1999-12-18', '9912184483863', '01090338092', 26, 'FEMALE', 'MIDDLE_SCHOOL', 'Ⅰ', '청년특례', '본인', 'C', '피부관리사', '울산광역시 남구 왕생로 56 115동 296호', '화암중학교', '인문계', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (69, '임시우', DATE '1993-10-18', '9310183578284', '01025906833', 32, 'MALE', 'COLLEGE', 'Ⅰ', '청년특례', '만료', 'C', '제빵', '울산광역시 울주군 언양로 48 105동 564호', '울산과학대학교', '재활학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (70, '정가은', DATE '1980-04-28', '8004281101844', '01019363597', 45, 'MALE', 'COLLEGE', 'Ⅱ', '특정계층', '취업지원(2)', 'C', '조리사 제빵 바리스타', '울산광역시 남구 수암로 111 119동 122호', '울산과학대학교', '건축학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (71, '김태현', DATE '1974-08-19', '7408191322030', '01038228633', 51, 'MALE', 'COLLEGE', 'Ⅱ', '특정계층', '본인', 'C', '치과위생사', '울산광역시 울주군 언양로 176 118동 425호', '대구보건대', '보건학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (72, '윤채원', DATE '1993-11-10', '9311102459732', '01068459351', 32, 'FEMALE', 'COLLEGE', 'Ⅰ', '청년특례', '구직활동(3)', 'C', '사회복지사', '울산광역시 북구 매곡로 14 101동 171호', '영남대학교', '가정관리과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (73, '정지우', DATE '1996-03-25', '9603252524835', '01067015728', 29, 'FEMALE', 'UNIVERSITY', 'Ⅰ', '청년특례', '구직활동(3)', 'C', '사무직 캐드원', '울산광역시 동구 방어진순환도로 82 116동 894호', '동의대학교', '정보·통신공학', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (74, '정지우', DATE '1972-08-01', '7208013650757', '01071012845', 53, 'MALE', 'HIGH_SCHOOL', 'Ⅱ', '중장년층', '본인', 'C', '지게차운전원 품질관리사무원', '울산광역시 동구 대송로 68 116동 1286호', '경일고등학교', '인문계', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (75, '이지민', DATE '1992-02-21', '9202212709520', '01020843567', 34, 'FEMALE', 'COLLEGE', 'Ⅰ', '청년특례', '본인', 'D', '안경사 사무직', '울산광역시 북구 호계로 151 109동 188호', '부산여자대학교', '광학공학', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (76, '조주원', DATE '1997-04-17', '9704173518757', '01060516483', 28, 'MALE', 'UNIVERSITY', 'Ⅰ', '청년특례', '파견업', 'C', '사무직', '울산광역시 동구 대송로 113 101동 1260호', '울산대학교', '행정학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (77, '윤주원', DATE '1990-11-05', '9011053788755', '01082444648', 35, 'MALE', 'UNIVERSITY', 'Ⅰ', '청년특례', '구직활동(3)', 'C', '사무직', '울산광역시 북구 산하중앙로 56 106동 883호', '대구대학교', '유아교육학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (78, '이시우', DATE '1997-07-03', '9707031350042', '01026393295', 28, 'MALE', 'HIGH_SCHOOL', 'Ⅰ', '청년특례', '구직활동(3)', 'C', '생산직 자동차정비원 바리스타', '울산광역시 중구 번영로 101 109동 492호', '현대공업고등학교', '자동차공학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (79, '박현우', DATE '1997-02-21', '9702212295435', '01038998024', 29, 'FEMALE', 'UNIVERSITY', 'Ⅰ', '청년특례', '중단', 'C', '바리스타 제빵', '울산광역시 남구 번영로 116 111동 323호', '국가평생교육진흥원', '사회복지학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (80, '신태현', DATE '1999-06-21', '9906214400446', '01025469613', 26, 'FEMALE', 'UNIVERSITY', 'Ⅰ', '청년특례', '구직활동(3)', 'C', '사무직 치과위생사', '울산광역시 동구 방어진순환도로 169 116동 1448호', '부산여자대학교', '치의학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (81, '정하린', DATE '1998-01-06', '9801062863663', '01044431367', 28, 'FEMALE', 'UNIVERSITY', 'Ⅱ', '청년층', '구직활동(3)', 'D', '디자인 계열', '울산광역시 북구 호계로 1 105동 228호', '우송대학교', '기타 디자인학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (82, '한지우', DATE '1990-02-11', '9002111570553', '01051123837', 36, 'MALE', 'UNIVERSITY', 'Ⅱ', '특정계층', '구직활동(3)', 'D', '사무직 경리', '울산광역시 울주군 덕신로 129 102동 1184호', '신라대학교', '경영학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (83, '신예준', DATE '1992-03-10', '9203101746196', '01013989600', 33, 'MALE', 'UNIVERSITY', 'Ⅰ', '청년특례', '본인', 'D', '생산관리사무원 품질관리사무원 연구원', '울산광역시 남구 왕생로 168 111동 293호', '부경대학교', '재료공학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (84, '이도윤', DATE '1998-02-28', '9802282277608', '01051413241', 27, 'FEMALE', 'COLLEGE', 'Ⅰ', '청년특례', '구직활동(3)', 'C', '직업상담 사무직', '울산광역시 중구 중앙길 14 110동 1095호', '울산과학대학교', '교양어·문학', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (85, '강예준', DATE '1994-04-08', '9404081516822', '01069328184', 31, 'MALE', 'MIDDLE_SCHOOL', 'Ⅰ', '청년특례', '구직활동(3)', 'C', '편집디자이너 시각디자이너', '울산광역시 울주군 언양로 169 117동 807호', '남목중학교', '인문계', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (86, '장예준', DATE '1992-09-19', '9209193626268', '01063588112', 33, 'MALE', 'COLLEGE', 'Ⅰ', '청년특례', '구직활동(3)', 'C', '간호조무사 병원코디네이터 피부미용사', '울산광역시 동구 방어진순환도로 196 102동 711호', '대구미래대학교', '영상·예술', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (87, '신수민', DATE '1996-12-17', '9612174993661', '01054788444', 29, 'FEMALE', 'COLLEGE', 'Ⅱ', '청년층', '본인', 'D', '품질관리사무원 CNC밀링 선반 산업안전', '울산광역시 동구 화진길 180 115동 799호', '울산과학대학교', '산업공학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (88, '신유진', DATE '1983-12-13', '8312132735558', '01052733763', 42, 'FEMALE', 'MIDDLE_SCHOOL', 'Ⅱ', '특정계층', '중단', 'C', '요양보호사', '울산광역시 북구 호계로 181 108동 1462호', '하북초등학교', '인문계', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (89, '서서연', DATE '1997-06-25', '9706254861456', '01059305504', 28, 'FEMALE', 'COLLEGE', 'Ⅱ', '청년층', '본인', 'D', '상품진열원 매장계산원 생산직', '울산광역시 동구 봉수로 172 120동 651호', '울산과학대학교', '체육학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (90, '오지우', DATE '1993-08-21', '9308214142056', '01046784226', 32, 'FEMALE', 'HIGH_SCHOOL', 'Ⅰ', '청년특례', '파견업 실적', 'C', '생산직 목공', '울산광역시 울주군 범서로 56 105동 552호', '울산생활과학고등학교', '인테리어학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (91, '서주원', DATE '1999-07-19', '9907193524652', '01021783761', 26, 'MALE', 'COLLEGE', 'Ⅰ', '청년특례', '본인', 'D', '간호조무사 병원행정사무원', '울산광역시 울주군 범서로 30 105동 1081호', '대구보건대', '보건행정학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (92, '오시우', DATE '1993-02-27', '9302273309321', '01093498264', 32, 'MALE', 'UNIVERSITY', 'Ⅱ', '청년층', '파견업 실적', 'D', '사무직 비서', '울산광역시 중구 학성로 102 102동 628호', '신라대학교', '영어학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (93, '한민준', DATE '1992-11-03', '9211031898940', '01036762080', 33, 'MALE', 'HIGH_SCHOOL', 'Ⅰ', '청년특례', '고보미가입', 'C', '바리스타', '울산광역시 남구 수암로 31 109동 687호', '문현고등학교', '인문계', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (94, '장서연', DATE '1999-08-27', '9908271214738', '01081454603', 26, 'MALE', 'COLLEGE', 'Ⅰ', '청년특례', '구직활동(3)', 'C', '회계사무원 총무 및 일반사무원', '울산광역시 북구 매곡로 66 115동 340호', '울산과학대학교', '세무회계학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (95, '권다은', DATE '1975-11-17', '7511174778875', '01024744784', 50, 'FEMALE', 'HIGH_SCHOOL', 'Ⅱ', '중장년층', '파견업 실적', 'C', '생산직 제품포장', '울산광역시 울주군 온산로 72 120동 432호', '청주기계공업고등학교', '기계정비학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (96, '조유진', DATE '1995-05-08', '9505084677207', '01046093072', 30, 'FEMALE', 'UNIVERSITY', 'Ⅱ', '특정계층', '구직활동(3)', 'B', '공공행정 인사사무원 총무사무원', '울산광역시 중구 번영로 173 107동 613호', '부경대학교', '역사학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (97, '이주원', DATE '1994-09-19', '9409194650850', '01042566777', 31, 'FEMALE', 'MIDDLE_SCHOOL', 'Ⅰ', '청년특례', '구직활동(3)', 'B', '네일', '울산광역시 울주군 온산로 186 102동 556호', '화암중학교', '인문계', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (98, '이채원', DATE '1996-10-21', '9610213504635', '01085452163', 29, 'MALE', 'COLLEGE', 'Ⅰ', '청년특례', '구직활동(3)', 'B', '바리스타 네일 매장계산원', '울산광역시 남구 수암로 41 110동 1185호', '울산과학대학교', '경영학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (99, '박지우', DATE '1999-04-01', '9904014435220', '01033964565', 26, 'FEMALE', 'UNIVERSITY', 'Ⅱ', '청년층', '구직활동(3)', 'C', '총무 및 일반사무원 회계사무원', '울산광역시 울주군 언양로 118 109동 463호', '울산대학교', '회계학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (100, '신하린', DATE '1991-05-22', '9105224873300', '01080482457', 34, 'FEMALE', 'HIGH_SCHOOL', 'Ⅰ', '청년특례', '구직활동(3)', 'B', '생산직 사무직', '울산광역시 중구 옥교로 103 120동 824호', '호계고등학교', '인문계', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (101, '한시우', DATE '1993-05-26', '9305264424903', '01087726170', 32, 'FEMALE', 'HIGH_SCHOOL', 'Ⅰ', '청년특례', '구직활동(3)', 'B', '사무직', '울산광역시 북구 천곡길 46 117동 1347호', '현대고등학교', '인문계', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (102, '정채원', DATE '1971-06-28', '7106283988404', '01014343312', 54, 'MALE', 'MIDDLE_SCHOOL', 'Ⅰ', '청년특례', '구직활동(3)', 'B', '제빵사', '울산광역시 동구 화진길 120 106동 1374호', '공도중학교', '인문계', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (103, '최유진', DATE '1973-05-17', '7305171959351', '01067585366', 52, 'MALE', 'HIGH_SCHOOL', 'Ⅱ', '특정계층', '알선', 'B', '학교행정보조 소방안전관리 시설안전관리 경비원', '울산광역시 남구 삼산로 98 102동 869호', '검정고시', '인문계', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (104, '서태현', DATE '1975-02-20', '7502204997246', '01083668130', 51, 'FEMALE', 'UNIVERSITY', 'Ⅱ', '특정계층', '구직활동(3)', 'B', '바리스타 주방보조', '울산광역시 중구 중앙길 128 105동 950호', '동의대학교', '경영학과 체육학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (105, '이현우', DATE '1996-01-23', '9601234402648', '01046566591', 30, 'FEMALE', 'HIGH_SCHOOL', 'Ⅰ', '청년특례', '고보미가입', 'B', '바리스타 주방보조', '울산광역시 동구 화진길 30 106동 1059호', '감포고등학교', '인문계', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (106, '신서윤', DATE '1999-03-05', '9903054962080', '01047478041', 26, 'FEMALE', 'UNIVERSITY', 'Ⅱ', '청년층', '본인', 'C', 'ux ui 디자이너 브랜드 디자이너', '울산광역시 남구 왕생로 135 118동 1006호', '대구대학교', '간호학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (107, '신가은', DATE '1999-04-17', '9904173655538', '01043038280', 26, 'MALE', 'UNIVERSITY', 'Ⅱ', '청년층', '구직활동(3)', 'C', '플랜트 공학기술 생산관리', '울산광역시 북구 천곡길 175 113동 473호', '울산대학교', '화학공학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (108, '서시우', DATE '1970-09-03', '7009032853889', '01042433545', 55, 'FEMALE', 'UNIVERSITY', 'Ⅱ', '중장년층', '구직활동(3)', 'B', '사무직', '울산광역시 동구 화진길 97 109동 438호', '대구대학교', '재활학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (109, '이하린', DATE '1970-01-15', '7001151589111', '01015067215', 56, 'MALE', 'COLLEGE', 'Ⅰ', '청년특례', '구직활동(3)', 'B', '네일아티스트 바리스타 사무보조', '울산광역시 중구 번영로 168 113동 280호', '계명문화대학교', '영상·예술', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (110, '이지훈', DATE '1993-05-22', '9305222151048', '01068148173', 32, 'FEMALE', 'UNIVERSITY', 'Ⅱ', '청년층', '본인', 'B', NULL, '울산광역시 울주군 범서로 89 107동 533호', '울산대학교', '생명과학교', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (111, '윤지민', DATE '1993-02-18', '9302181466401', '01081376662', 33, 'MALE', 'UNIVERSITY', 'Ⅱ', '청년층', '본인', 'B', '회계사무원 총무 및 일반사무원', '울산광역시 남구 번영로 171 101동 344호', '목원대학교', '법학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (112, '신예준', DATE '1992-08-28', '9208283605943', '01024518493', 33, 'MALE', 'COLLEGE', 'Ⅱ', '청년층', '구직활동(3)', 'B', '바리스타', '울산광역시 동구 대송로 64 115동 351호', '울산과학대학교', '식품영양학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (113, '장채원', DATE '1999-04-05', '9904054703369', '01073042632', 26, 'FEMALE', 'UNIVERSITY', 'Ⅱ', '청년층', '구직활동(3)', 'B', '사무직', '울산광역시 북구 산하중앙로 151 113동 425호', '창원대학교', '무역학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (114, '오하은', DATE '1990-07-16', '9007164899545', '01034519009', 35, 'FEMALE', 'COLLEGE', 'Ⅱ', '특정계층', '구직활동(3)', 'A', '생산직', '울산광역시 북구 산하중앙로 93 109동 189호', '영남이공대학교', '기계금속학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (115, '김지우', DATE '1979-09-20', '7909203502277', '01036297608', 46, 'MALE', 'HIGH_SCHOOL', 'Ⅱ', '특정계층', '구직활동(3)', 'B', '음식점', '울산광역시 울주군 범서로 19 104동 809호', '상주여자고등학교', '인문계', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (116, '강수민', DATE '1995-01-16', '9501161235960', '01064094304', 31, 'MALE', 'HIGH_SCHOOL', 'Ⅰ', '요건심사형', '취업지원(2)', 'B', '마케팅 바리스타', '울산광역시 북구 천곡길 124 104동 1070호', '검정고시', '인문계', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (117, '윤도윤', DATE '1971-08-26', '7108261677491', '01043145519', 54, 'MALE', 'COLLEGE', 'Ⅰ', '요건심사형', '구직활동(3)', 'B', '인테리어디자이너', '울산광역시 북구 매곡로 74 119동 1043호', '부산경상대학교', '산업디자인학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (118, '오민준', DATE '1995-07-12', '9507121654620', '01043794397', 30, 'MALE', 'UNIVERSITY', 'Ⅱ', '청년층', '본인', 'C', '마케팅', '울산광역시 남구 삼산로 71 112동 716호', '울산대학교', '경영 · 경영정보학부', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (119, '윤유진', DATE '1993-08-25', '9308254527049', '01091335659', 32, 'FEMALE', 'UNIVERSITY', 'Ⅱ', '청년층', '구직활동(3)', 'C', '재경관리 경리', '울산광역시 울주군 덕신로 94 118동 966호', '한신대학교', '경제학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (120, '강예준', DATE '1992-05-05', '9205053807221', '01024145583', 33, 'MALE', 'UNIVERSITY', 'Ⅱ', '청년층', '구직활동(3)', 'C', '마케팅 사무직', '울산광역시 동구 봉수로 31 115동 497호', '동아대학교', '중국어학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (121, '서유진', DATE '1993-03-12', '9303123816684', '01040598337', 32, 'MALE', 'HIGH_SCHOOL', 'Ⅱ', '청년층', '구직활동(3)', 'B', '메이크업 속눈썹 왁싱 반영구', '울산광역시 중구 번영로 166 111동 1372호', '울산여자상업고등학교', '회계학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (122, '정은우', DATE '1991-02-15', '9102152758654', '01033767503', 35, 'FEMALE', 'UNIVERSITY', 'Ⅱ', '청년층', '구직활동(3)', 'C', '사회복지사', '울산광역시 울주군 언양로 55 107동 781호', '울산대학교', '사회복지학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (123, '서태현', DATE '1990-12-02', '9012022907027', '01061019979', 35, 'FEMALE', 'UNIVERSITY', 'Ⅱ', '청년층', '취업지원(2)', 'C', '응용소프트웨어 인사 총무', '울산광역시 남구 번영로 83 102동 302호', '한국해양대학교', '무역·유통학', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (124, '장지민', DATE '1997-12-09', '9712093279748', '01077568711', 28, 'MALE', 'UNIVERSITY', 'Ⅰ', '청년특례', '취업지원(2)', 'B', '사무직', '울산광역시 동구 대송로 129 115동 539호', '계명대학교', '심리학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (125, '조예준', DATE '1990-03-04', '9003041102268', '01076407772', 35, 'MALE', 'UNIVERSITY', 'Ⅱ', '청년층', '구직활동(3)', 'C', '물류관리사무원 무역사무원', '울산광역시 남구 번영로 149 120동 444호', '한국해양대', '물류시스템공학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (126, '한수민', DATE '1990-01-15', '9001153280645', '01056856281', 36, 'MALE', 'COLLEGE', 'Ⅱ', '청년층', '구직활동(3)', 'B', '물리치료사 홀서빙 바리스타', '울산광역시 북구 매곡로 12 104동 1462호', '동주대학교', '재활학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (127, '윤시우', DATE '1993-11-24', '9311241458785', '01013093083', 32, 'MALE', 'HIGH_SCHOOL', 'Ⅱ', '특정계층', '알선', 'B', '약국 사무직 간호조무사', '울산광역시 남구 왕생로 117 113동 913호', '부성정보고등학교', '유통관리', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (128, '오은우', DATE '1971-03-10', '7103104538782', '01091788989', 54, 'FEMALE', 'HIGH_SCHOOL', 'Ⅱ', '특정계층', '구직활동(3)', 'B', '건설 채굴 단순 종사원 임업 단순 종사원', '울산광역시 북구 매곡로 20 118동 1258호', '동의고등학교', '인문계', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (129, '오주원', DATE '1990-04-08', '9004083686728', '01053818714', 35, 'MALE', 'HIGH_SCHOOL', 'Ⅰ', '청년특례', '구직활동(3)', 'B', '마케팅사무원', '울산광역시 울주군 온산로 131 115동 1055호', 'judah christian high school', '인문계', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (130, '조수민', DATE '1999-01-09', '9901092539705', '01015913269', 27, 'FEMALE', 'UNIVERSITY', 'Ⅱ', '청년층', '구직활동(3)', 'B', '패션디자이너 생산직 웹디자이너', '울산광역시 중구 옥교로 50 108동 1323호', '울산대학교', '의류디자인학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (131, '장가은', DATE '1997-07-26', '9707261486863', '01046708669', 28, 'MALE', 'UNIVERSITY', 'Ⅱ', '청년층', '구직활동(3)', 'C', '대기환경 화학공학', '울산광역시 중구 옥교로 36 106동 106호', '울산대학교', '화학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (132, '서서윤', DATE '1979-07-06', '7907064178740', '01058533196', 46, 'FEMALE', 'HIGH_SCHOOL', 'Ⅱ', '특정계층', '본인', 'C', '사무직 경리 경비직', '울산광역시 중구 학성로 115 116동 159호', '울산생활과학고등학교', '기타디자인과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (133, '오다은', DATE '1993-12-22', '9312224332956', '01084385523', 32, 'FEMALE', 'COLLEGE', 'Ⅱ', '청년층', '본인', 'B', '치과위생사', '울산광역시 중구 학성로 164 106동 1290호', '울산과학대학교', '치위생학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (134, '권채원', DATE '1974-05-26', '7405261831614', '01087958733', 51, 'MALE', 'COLLEGE', 'Ⅰ', '요건심사형', '구직활동(3)', 'A', '사무보조 경리', '울산광역시 중구 중앙길 96 105동 358호', '춘해대학교', '보건의료학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (135, '조가은', DATE '1990-01-14', '9001143837796', '01015644638', 36, 'MALE', 'UNIVERSITY', 'Ⅰ', '청년특례', '구직활동(3)', 'C', '생산 및 품질관리 연구직', '울산광역시 북구 산하중앙로 138 110동 989호', '울산대학교', '화학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (136, '오민준', DATE '1998-11-22', '9811224751485', '01062685401', 27, 'FEMALE', 'COLLEGE', 'Ⅱ', '청년층', '본인', 'B', '치과위생사', '울산광역시 북구 매곡로 106 105동 1470호', '울산과학대학교', '치위생학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (137, '이수민', DATE '1996-07-15', '9607154303501', '01061369500', 29, 'FEMALE', 'UNIVERSITY', 'Ⅱ', '청년층', '구직활동(3)', 'B', '사무보조 애견미용', '울산광역시 중구 번영로 175 102동 445호', '대구가톨릭대학교', '행정학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (138, '신다은', DATE '1998-06-09', '9806091771029', '01027389813', 27, 'MALE', 'COLLEGE', 'Ⅰ', '청년특례', '본인', 'B', '치과위생사', '울산광역시 북구 호계로 97 110동 1495호', '울산과학대학교', '치위생학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (139, '박하은', DATE '1992-12-24', '9212244726327', '01056395210', 33, 'FEMALE', 'COLLEGE', 'Ⅱ', '청년층', '본인', 'B', '치과위생사', '울산광역시 남구 왕생로 104 114동 917호', '울산과학대학교', '치위생학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (140, '윤가은', DATE '1990-04-12', '9004123232717', '01024655619', 35, 'MALE', 'COLLEGE', 'Ⅱ', '청년층', '구직활동(3)', 'B', '총무 및 일반사무원', '울산광역시 남구 삼산로 18 116동 552호', '울산과학대학교', '사회복지학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (141, '박채원', DATE '1979-06-12', '7906121630022', '01067494928', 46, 'MALE', 'HIGH_SCHOOL', 'Ⅰ', '청년특례', '구직활동(3)', 'B', '경리사무원 회계사무원', '울산광역시 동구 봉수로 87 117동 1314호', '울산생활과학고등학교', '경영학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (142, '장수민', DATE '1995-08-12', '9508123980644', '01050913355', 30, 'MALE', 'HIGH_SCHOOL', 'Ⅰ', '청년특례', '중단', 'B', '경리사무원 사무보조', '울산광역시 울주군 덕신로 100 107동 931호', '삼일여자고등학교', '인문계', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (143, '서예준', DATE '1993-05-21', '9305214133603', '01040421416', 32, 'FEMALE', 'UNIVERSITY', 'Ⅱ', '청년층', '본인', 'C', '학교행정보조', '울산광역시 울주군 온산로 94 102동 746호', '울산대학교', '국어국문학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (144, '권지훈', DATE '1974-07-02', '7407024355115', '01073121578', 51, 'FEMALE', 'UNIVERSITY', 'Ⅱ', '특정계층', '본인', 'B', '직업상담사', '울산광역시 울주군 덕신로 117 114동 1387호', '울산대학교', '행정학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (145, '장가은', DATE '1998-04-25', '9804251508938', '01059061663', 27, 'MALE', 'UNIVERSITY', 'Ⅰ', '청년특례', '취업지원(2)', 'B', '사무직 회계직 바리스타', '울산광역시 동구 봉수로 42 102동 1485호', '동서대학교', '사회.복지학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (146, '서가은', DATE '1992-03-08', '9203083300047', '01095673305', 33, 'MALE', 'UNIVERSITY', 'Ⅰ', '청년특례', '구직활동(3)', 'B', '백화점 판매 콜센터 사무직', '울산광역시 남구 왕생로 178 111동 1053호', '동의대학교', '사회.복지학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (147, '정수민', DATE '1994-10-28', '9410284404241', '01061434578', 31, 'FEMALE', 'UNIVERSITY', 'Ⅱ', '청년층', '본인', 'C', '웹개발', '울산광역시 중구 옥교로 196 119동 845호', '경남대학교', '컴퓨터공학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (148, '오수민', DATE '1998-02-13', '9802134594410', '01053879454', 28, 'FEMALE', 'UNIVERSITY', 'Ⅱ', '청년층', '중단', 'C', '사무', '울산광역시 북구 호계로 194 120동 367호', '동원과학기술대학', '간호학과', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (149, '윤예준', DATE '1997-02-21', '9702211712878', '01019376668', 29, 'MALE', 'HIGH_SCHOOL', 'Ⅱ', '청년층', '구직활동(3)', 'B', '자재관리사무원 물류관리사무원', '울산광역시 울주군 범서로 85 115동 1409호', '방어진고등학교', '인문계', NULL);
INSERT INTO clients (id, name, birth_date, resident_id, phone, age, gender, education, business_type, join_type, join_stage, competency, desired_job, address, university, major, embedding) VALUES (150, '오예준', DATE '1992-11-05', '9211052305993', '01023426507', 33, 'FEMALE', 'UNIVERSITY', 'Ⅱ', '청년층', '구직활동(3)', 'C', '화학연구 생산관리', '울산광역시 북구 호계로 180 115동 323호', '동의대학교', '화학과', NULL);

-- consultation
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (1, DATE '2024-06-12', '9월 정도에 서울로 이사 예정

7월 30일 훈련 예정', NULL, DATE '2024-06-21', 19, 1);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (2, DATE '2024-06-13', '기획/ 마케팅 분야로 취업고민 중_영상편집
훈련과정 참여 고민

일용근로 근무 중', NULL, DATE '2024-06-26', 23, 2);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (3, DATE '2024-06-18', '제과 디저트 실무(기초반)
울산동구알비제과제빵바리스타학원
 2024-07-16 ~2024-09-05 (5회차)

기초반 이후, 심화반도 들을 예정', NULL, DATE '2024-06-27', 21, 3);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (4, DATE '2024-06-17', '사회복지 실습 7/1(7/26 실습 종료), 근로장학금 진행 중(월 40만원)

1. 청소년 지도사->수련시설
2. 바리스타
3. 직업상담사-> 훈련 고민 중

청소년 지도사: 10월 면접 준비, 11월 면접 예정(추후 확인 필요)

근로장학금의 경우 소득신고 대상x', NULL, DATE '2024-06-26', 17, 4);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (5, DATE '2024-06-18', '애견미용 훈련 희망(찾아본 훈련x)
창업예정, 지게차 훈련 고민 중', NULL, DATE '2024-06-28', 18, 5);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (6, DATE '2024-06-25', '훈련종료 후 더 훈련 생각 있음', NULL, DATE '2024-07-05', 15, 6);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (7, DATE '2024-07-02', '지게차운전면허 자격증 취득 완료', NULL, DATE '2024-07-11', 17, 7);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (8, DATE '2024-07-10', '광고기획 마케팅
훈련생각 x, 광고회사의 마케팅 직무
워크넷, 사람인, 잡코리아 모두 보지만
실제로 잡코리아 입사지원

지방에서 경력을 쌓고, 이후 서울, 경기도로 이직
공모전, sns마케팅 훈련 등 준비 중

 - 기업명: 2024 미래내일일경험 와이투어앤골프 인턴형 2회차
 - 일경험 참여 유형:미래내일 일경험사업_인턴형    
 - 일경험 참여 기간: 24.10.28~25.01.10', NULL, DATE '2024-07-26', 19, 8);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (9, DATE '2024-07-17', '간호조무사 자격증 취득과정 (주간반)
드림간호학원
2024-09-23~2025-09-12 (2회차)', NULL, DATE '2024-07-31', 20, 9);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (10, DATE '2024-03-11', '이관자 진행 확인 필요

전산회계1급 자격증취득과정 B
그린컴퓨터아카데미
2024-08-12 ~2024-08-29 (5회차)

울산 동구로 구직활동 예정
최저임금 이상 되면 지원
워크넷, 인크루트, 사람인

친구 아버지가 회사 알아봐 주고 있음
9월 한달간 구직활동 유예', NULL, DATE '2024-03-20', 14, 10);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (11, DATE '2024-07-31', '청년도전지원사업-> 일경험프로그램 안내
확인필요

1유형->50만원*3개월 받음

제빵 직업훈련 고민 중
동구 청년센터 일경험 신청 예정', NULL, DATE '2024-08-14', 23, 11);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (12, DATE '2024-08-06', '(산대특)_중소기업 특화 멀티경리사무원 양성과정
울산직업전문학교
2024-07-29 ~ 2024-10-31 (2회차)', NULL, DATE '2024-08-19', 20, 12);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (13, DATE '2024-08-07', '훈련과정 참여 예정_탐색 필요', NULL, DATE '2024-08-16', 16, 13);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (14, DATE '2024-09-02', '간호조무사 자격취득과정B 
세계로간호학원
2024-10-16 ~ 2025-09-05 (2회차)

개명예정', NULL, DATE '2024-09-19', 22, 14);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (15, DATE '2024-09-05', '제과제빵기능사 자격증 취득과정(이론+실기) 
울산동구알비제과제빵바리스타학원
2024-08-08 ~2024-10-22 (4회차)

주거,의료급여 수급중/조건부수급 신청예정

미용훈련과정 참여희망', NULL, DATE '2024-09-19', 17, 15);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (16, DATE '2024-09-09', '무역사무원 경력보유
사무/ 사무보조 취업희망

전산회계 수업 희망

의약품 및 화장품 관련 회사에 근무한 경력이 있으며, 제품 기획 및 개발 업무, 일본 무역사무 업무를 담당하였습니다.

공무원 준비로 전향', NULL, DATE '2024-09-20', 17, 16);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (17, DATE '2026-02-26', '국어학과 전공

바리스타 수업희망, 한식조리, 컴활 훈련 희망
훈련과정 탐색 과제 진행

쿠팡 아르바이트 진행 중', NULL, DATE '2024-10-02', 27, 17);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (18, DATE '2024-09-23', '바리스타 자격증 과정(2급)
울산동구알비제과제빵바리스타학원
2024.08.30~2024.10.23

설계_조선, 플랜트
사무직으로 취업희망함
추후 구직신청서 수정 필요_방문 하기로 함

자신의 잘못으로 인한 퇴사
심리안정 프로그램 신청_10/4', NULL, DATE '2024-10-04', 25, 18);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (19, DATE '2024-09-30', '창업, 취업 고민 중
바리스타, 바리스타 강사 등
제빵 훈련 등 고민', NULL, DATE '2024-10-16', 28, 19);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (20, DATE '2024-06-21', '임금 중요

훈련참여 예정', NULL, DATE '2024-07-01', 14, 20);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (21, DATE '2024-02-13', NULL, NULL, DATE '2024-02-21', 22, 21);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (22, DATE '2024-02-13', '6/1 모스원주식회사-강선건조업 룸메이드', NULL, DATE '2024-02-21', 20, 22);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (23, DATE '2024-03-19', NULL, NULL, DATE '2024-03-27', 13, 23);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (24, DATE '2024-04-02', NULL, NULL, DATE '2024-04-11', 15, 24);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (25, DATE '2024-03-25', NULL, NULL, DATE '2024-04-09', 20, 25);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (26, DATE '2024-02-20', NULL, NULL, DATE '2024-03-04', 20, 26);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (27, DATE '2024-03-07', '신호수_ 인턴형 참여
9/1~11/30', NULL, DATE '2024-03-15', 12, 27);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (28, DATE '2024-05-23', '동구청_ 체험형 참여
8/4~11/4', NULL, DATE '2024-06-04', 19, 28);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (29, DATE '2024-04-08', NULL, NULL, DATE '2024-04-16', 14, 29);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (30, DATE '2024-05-07', NULL, NULL, DATE '2024-05-17', 45, 30);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (31, DATE '2024-05-14', NULL, NULL, DATE '2024-05-28', 22, 31);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (32, DATE '2024-10-15', '바리스타 자격증 과정(2급/홈카페마스터)
울산동구알비제과제빵바리스타학원
2024.09.04~2024.10.17

제과제빵기능사 자격증 취득과정(이론+실기)
울산동구알비제과제빵바리스타학원
2024-10-24 ~2024-12-27 (5회차)', NULL, DATE '2024-10-23', 16, 32);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (33, DATE '2024-10-22', '전산회계 개인적으로 공부 중', NULL, DATE '2024-10-31', 17, 33);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (34, DATE '2024-10-25', '요양보호사 자격취득과정A(주간,야간) 
세계로요양보호사교육원
2024-10-28 ~2024-12-20 (3회차)', NULL, DATE '2024-11-05', 16, 34);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (35, DATE '2024-11-05', '중견이상의 업체, 공공기관 취업생각
교습소 창업 생각있음(25.2월 이후)', NULL, DATE '2024-11-15', 19, 35);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (36, DATE '2024-11-11', '주방보조_5년 6개월 근무', NULL, DATE '2024-11-19', 20, 36);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (37, DATE '2024-11-18', '훈련참여 예정_알비
지인이 카페 운영 중', NULL, DATE '2024-11-27', 20, 37);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (38, DATE '2024-11-29', '아랍어 전공 고려/ 국제개발협력업무 가능

전산회계 수업 추가 예정', NULL, DATE '2024-12-09', 14, 38);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (39, DATE '2026-03-10', '결혼이민자 유형

워크넷 본인인증 확인', NULL, DATE '2025-01-08', 21, 39);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (40, DATE '2024-09-03', '희망근무지역 : 김해시, 창원시
급여 : 확인 필요', NULL, DATE '2024-09-11', 17, 40);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (41, DATE '2024-05-02', '희망근무지역 : 울산, 서울, 대구
급여 : 확인 필요', NULL, DATE '2024-05-16', 18, 41);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (42, DATE '2024-01-30', '울주군 범서읍 거주중
미취약 자녀 보육
단시간 사무보조, 데스크안내원', NULL, DATE '2024-02-07', 17, 42);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (43, DATE '2024-01-19', '공무원 취업', NULL, DATE '2024-01-29', 18, 43);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (44, DATE '2024-02-08', NULL, NULL, DATE '2024-02-27', 26, 44);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (45, DATE '2024-03-15', '한솔신약_2/3일 출근
취업예정자', NULL, DATE '2024-03-27', 16, 45);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (46, DATE '2024-03-29', '부동산 단순경리 5년 6개월
취업의사 없음', NULL, DATE '2024-04-12', 22, 46);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (47, DATE '2024-04-22', '주 12시간 아르바이트
음식점, 카페 등 근무
일본 워킹홀리데이 준비 중', NULL, DATE '2024-05-03', 25, 47);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (48, DATE '2024-05-02', '식품제조업 품질관리 1년 6개월 경력
위험물 산업기사 등 보유
중견기업 이상 희망', NULL, DATE '2024-05-14', 16, 48);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (49, DATE '2024-05-22', '목표기업: 삼양, 품질관리/ 제품개발
울산, 경남
컴활1급, 운전면허 2종, 식품기사', NULL, DATE '2024-06-05', 20, 49);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (50, DATE '2024-02-08', '취업성공수당x', NULL, DATE '2024-02-21', 14, 50);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (51, DATE '2024-04-01', '포트폴리오 제작 중', NULL, DATE '2024-04-12', 19, 51);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (52, DATE '2024-09-26', '현대자동차 촉탁 목표
대형, 2종 보통
생산직 혹은 운전 직무', NULL, DATE '2024-10-08', 19, 52);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (53, DATE '2024-12-12', '희망지역 : 울산, 부산, 양산, 김해
경력사항 : 경영지원 2년, 총무부/ 구매부 4년
공기업 입사지원 중', NULL, DATE '2024-12-20', 12, 53);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (54, DATE '2024-12-13', '25.03.월 개강하는 요양보호사 과정 희망
요양보호사 12개월
요양보호사, 은잔먄하 2정 보통', NULL, DATE '2024-12-23', 13, 54);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (55, DATE '2024-12-23', '(내선공사)전기내선공사 기초기술자 양성과정-B
2024.11.28~2025.04.29
울산직업전문학교', NULL, DATE '2025-01-06', 20, 55);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (56, DATE '2026-03-11', '(산대특)_AI기반 기계설계 및 3D프린팅(CAD/인벤터/Fusion360)
2024.12.30~2025.05.14
KH인재교육원', NULL, DATE '2025-01-03', 12, 56);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (57, DATE '2024-02-07', '구직의사 없음
일본워킹 홀리데이 4월 예정', NULL, DATE '2024-02-26', 25, 57);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (58, DATE '2024-04-29', NULL, NULL, DATE '2024-05-10', 18, 58);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (59, DATE '2024-01-31', '2024-04-26 중단', NULL, DATE '2024-02-19', 60, 59);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (60, DATE '2024-04-22', '2024-04-30 중단/ iap수립 전', NULL, NULL, NULL, 60);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (61, DATE '2024-10-30', '기타 기계공학 기술자 및 연구원', NULL, DATE '2024-11-13', 29, 61);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (62, DATE '2024-11-18', '연력x', NULL, DATE '2024-11-28', 16, 62);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (63, DATE '2025-01-13', '용접분야 : tig, co2
tig쪽으로 채용희망
6월에 있을 석유단지 공사 쪽으로 생각 중
현대자동차 안에 있는 곳으로 희망', NULL, DATE '2025-01-17', 18, 63);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (64, DATE '2026-02-24', '바리스타 자격증 과정(2급)
울산동구알비제과제빵바리스타학원
2025-02-06 ~ 2025-03-12 (1회차)

제과제빵기능사 자격증 취득과정(이론+실기) 
울산동구알비제과제빵바리스타학원
2025-03-21 ~2025-05-29 (2회차)

6월에 있을 제과디저트 과정 추가도 희망', NULL, DATE '2025-01-17', 9, 64);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (65, DATE '2026-03-05', 'sbs아카데미 야간 훈련 중

DTP편집
sbs아카데미컴퓨터아트학원
2025.01.13~2025.06.10', NULL, DATE '2025-02-04', 23, 65);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (66, DATE '2025-01-21', '컴활 훈련 고민 중', NULL, DATE '2025-02-05', 24, 66);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (67, DATE '2025-02-06', '훈련참여 고민 중', NULL, DATE '2025-02-25', 33, 67);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (68, DATE '2025-01-14', '미용사(피부)자격증과정
웰컴미용직업전문학교
2025.03.05~2025.05.15', NULL, DATE '2025-02-28', 24, 68);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (69, DATE '2026-03-16', '직업 훈련 고민 중
제과제빵기능사 자격증 취득과정(이론+실기)
울산동구알비제과제빵바리스타학원
 2025-03-21 ~2025-05-29 (2회차)', NULL, DATE '2025-03-13', 22, 69);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (70, DATE '2026-02-27', '어린집 취업희망
한식조리사 자격증 보유
일식, 양식 등 훈련희망

6월에 있는 훈련과정 참여희망', NULL, DATE '2025-03-21', 22, 70);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (71, DATE '2026-05-14', '경력보유

직종미결정
치위생사, 사무직 등 고민 중
직업훈련 고려 중', NULL, DATE '2025-04-01', 22, 71);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (72, DATE '2026-02-24', '사회복지 경력 5년 보유
아기 양육중으로 11월 부터 구직활동 가능', NULL, DATE '2025-04-04', 26, 72);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (73, DATE '2026-03-06', '(산대특)_기계설계 (자동차 부품설계(2D,3D) 및 CAD/CAM/CNC가공) 
울산기술직업전문학교
2025-04-29 ~2025-10-14 (1회차)', NULL, DATE '2025-04-09', 30, 73);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (74, DATE '2025-03-18', '6/25일 직업훈련', NULL, DATE '2025-04-01', 19, 74);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (75, DATE '2025-03-27', '5월 사회복지사 실습 후 구직활동
11월 자격증 발급 예정, 취업이 안되면 직종 추가 후 구직활동희망', NULL, DATE '2025-04-10', 24, 75);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (76, DATE '2025-04-02', '현대 사무직 계약직 준비 중
(7월~8월까지는 다른곳 지원 x)

직업훈련 비희망', NULL, DATE '2025-04-10', 21, 76);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (77, DATE '2026-02-24', '직업훈련 없이 바로 구직활동
필요시 고민해 보기로 함', NULL, DATE '2025-04-17', 22, 77);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (78, DATE '2026-02-27', '울산, 부산으로 취업가능
생산직 우선으로 지원예정
부산으로 갈 경우 자취예정

바리스타 1년 경력 보유', NULL, DATE '2025-04-16', 22, 78);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (79, DATE '2025-04-02', '경기도 부천에 거주 중, 육아로 인해 울산에 옴
1년간 울산에 있을 예정
바리스타, 제빵, 네일 등 직종 고민
직업훈련 참여 예정', NULL, DATE '2025-04-10', 15, 79);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (80, DATE '2026-03-12', '직업훈련 참여 고민 중
09:00~17:00, 10:00~17:00', NULL, DATE '2025-04-24', 17, 80);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (81, DATE '2026-03-11', 'DTP편집
sbs아카데밈컴퓨터아트학원
2025.05.13~2025.10.15

해외취업 고려 중_워킹 홀리데이
훈련 종료 후', NULL, DATE '2025-04-29', 16, 81);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (82, DATE '2026-02-24', NULL, NULL, DATE '2025-04-29', 15, 82);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (83, DATE '2026-08-04', '울산, 부산, 경상도 취업가능
생산관리사무, 품질관리사무, 제품 개발
(철강, 금속, 배터리)

금속재료기사, 컴활2급, 스피킹 AL

2025.08.04/ 한주라이트메탈_생산관리', NULL, DATE '2025-05-12', 28, 83);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (84, DATE '2026-03-04', '학습지교사
요양보호사 고려 중', NULL, DATE '2025-05-22', 23, 84);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (85, DATE '2026-02-27', '위기청소년', NULL, DATE '2025-05-21', 22, 85);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (86, DATE '2026-03-12', '직업훈련 고려 중

미용사(피부)자격증과정
웰컴미용직업전문학교
2025-09-18 ~ 2025-12-04 ( 14회차)', NULL, DATE '2025-05-22', 22, 86);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (87, DATE '2026-03-06', 'CNC밀링/ 선반으로 경력3년

산업안전으로는 내년에 필기시험 있음
관련 직군으로 취업할 생각은   x

울산, 부산, 대구
연봉 4,000만원 교대 가능, 근무시간 관계x', NULL, DATE '2025-05-22', 16, 87);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (88, DATE '2025-05-26', '2026-05-30 중단', NULL, NULL, NULL, 88);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (89, DATE '2025-05-13', '상품진열원, 계산원, 단순업무 등으로 취업희망

내일배움카드 잔액 소진', NULL, DATE '2025-05-23', 17, 89);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (90, DATE '2025-05-20', '재개 1회', NULL, DATE '2025-06-04', 24, 90);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (91, DATE '2025-05-21', '간호조무사 2년 10개월 경력 보유
병원급으로 취업희망, 
특수파트 비희망(산부인과 등), 요양병원 비희망
울산 삼산, 달동, 신정동 가능
북구 호계 불가능

대중교통으로 출퇴근 가능한 곳
시티병원까지는 가능', NULL, DATE '2025-05-29', 17, 91);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (92, DATE '2026-02-25', NULL, NULL, DATE '2025-05-30', 18, 92);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (93, DATE '2025-05-23', '울과대 중퇴
최종학력 확인
직업훈련 5/30', NULL, DATE '2025-05-29', 11, 93);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (94, DATE '2026-03-03', '울과대 모집자', NULL, DATE '2025-06-12', 24, 94);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (95, DATE '2025-06-02', '생산직 바로 구직활동', NULL, DATE '2025-06-17', 22, 95);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (96, DATE '2026-03-04', '컴활훈련, 전산회계 훈련희망', NULL, DATE '2025-06-13', 18, 96);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (97, DATE '2026-02-24', '고등학교 중퇴
최종학력 확인 필요

8/12일 검정고시 응시 예정', NULL, DATE '2025-06-19', 21, 97);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (98, DATE '2026-02-24', '제빵
바리스타
판매 및 계산원

단시간 근로 희망(10:00~14:00)', NULL, DATE '2025-06-24', 16, 98);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (99, DATE '2026-03-04', '일반업체 회계팀', NULL, DATE '2025-06-24', 16, 99);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (100, DATE '2026-03-09', '훈련 고려 중, 계획서 변경 가능성 있음', NULL, DATE '2025-06-26', 16, 100);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (101, DATE '2026-03-03', NULL, NULL, DATE '2025-07-07', 27, 101);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (102, DATE '2026-03-10', '케이크 레터링 분야로 관심 많음
이후 추가훈련 예정', NULL, DATE '2025-07-02', 34, 102);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (103, DATE '2026-03-02', '직업훈련 고려 할수 있음', NULL, DATE '2025-07-08', 23, 103);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (104, DATE '2026-03-05', NULL, NULL, DATE '2025-07-07', 22, 104);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (105, DATE '2025-06-24', '숙박업 계열 혹은 생산직 희망

숙박의 경우 팬션

1. 울산 2. 경주 외동, 외동근처
주 5일제, 교대근무 관계 없음
월 300만원 이상', NULL, DATE '2025-07-08', 22, 105);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (106, DATE '2026-03-06', '미인정 훈련 참여 중

9:00~10:00 전화가능
전화 안될 시 카톡', NULL, DATE '2025-07-18', 30, 106);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (107, DATE '2026-03-05', '중견기업이상, 대기업 희망', NULL, DATE '2025-07-14', 20, 107);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (108, DATE '2026-02-27', '10:00~16:00 구직활동 가능

직업훈련 예정 중 / 9월 시작', NULL, DATE '2025-08-01', 32, 108);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (109, DATE '2026-03-09', '울산 동구, 남구로 구직활동

바리스타 훈련 고려 중
10:00~16:00 근무 희망', NULL, DATE '2025-07-23', 16, 109);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (110, DATE '2025-07-16', NULL, NULL, DATE '2025-08-07', 31, 110);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (111, DATE '2025-07-21', '25.08.11 출근 예정', NULL, NULL, NULL, 111);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (112, DATE '2026-03-03', '직업훈련', NULL, DATE '2025-08-05', 21, 112);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (113, DATE '2026-03-09', NULL, NULL, DATE '2025-08-26', 27, 113);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (114, DATE '2026-02-25', '기타  다른 직종으로도 취업희망', NULL, DATE '2025-08-18', 19, 114);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (115, DATE '2026-02-25', '식당 창업 예정
1호점은 아들, 2호점 추가 예정', NULL, DATE '2025-08-19', 20, 115);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (116, DATE '2026-03-06', '프리렌서 근무 중, 월 80만원 정도 발생
훈련고려 중
자택근무 희망', NULL, DATE '2025-09-15', 39, 116);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (117, DATE '2026-03-16', NULL, NULL, DATE '2025-09-17', 24, 117);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (118, DATE '2026-02-26', '26.02.월 졸업 후 구직활동', NULL, DATE '2025-09-12', 18, 118);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (119, DATE '2026-02-25', '이사온지 얼마 되지 않아 지리 모름', NULL, DATE '2025-09-17', 16, 119);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (120, DATE '2026-03-13', '2020.3월 입학


대학교 수료/ 졸업요건 미충족으로 졸업 x
마케팅 및 사무직 취업
부산, 월 210만원 이상

직업훈련 고려 중

해외취업도 생각(일본, 중국)
''- 해외취업의 경우 호텔리어, 지상직 승무원

취업이 안되면 워킹홀리데이 고려 중', NULL, DATE '2025-09-25', 22, 120);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (121, DATE '2026-03-13', '학과확인', NULL, DATE '2025-09-29', 22, 121);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (122, DATE '2026-02-27', '컴활 직업 훈련 예정

동구거주/사회복지학과/실습완료/주 9시간 근무/12학점(월,화 오후),NGO(부산,대구),아동청소년분야', NULL, DATE '2025-10-13', 36, 122);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (123, DATE '2026-02-26', 'k-디지털 훈련참여로 수당 부지급', NULL, DATE '2025-09-19', 10, 123);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (124, DATE '2026-03-05', NULL, NULL, DATE '2025-10-13', 29, 124);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (125, DATE '2026-03-04', '현재 직업훈련 중', NULL, DATE '2025-10-10', 19, 125);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (126, DATE '2026-03-13', '물리치료사 외 다른 직종도 고려 중
아이 양육으로 인한 경단', NULL, DATE '2025-10-23', 35, 126);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (127, DATE '2026-03-06', '간호조무사, 약국 (사무직)
울산 북구 송정, 화봉/ 동구
차량으로 30분 정도, 8시 30분 출근 가능
요양병원 비희망', NULL, DATE '2025-10-27', 34, 127);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (128, DATE '2026-02-25', '건설관련 종사자', NULL, DATE '2025-10-22', 31, 128);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (129, DATE '2026-02-24', '영상편집 및 퍼스널쇼퍼 직업훈련 희망', NULL, DATE '2025-10-24', 30, 129);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (130, DATE '2026-02-26', '페이지 디자인/ 직업훈련 고려 중', NULL, DATE '2025-11-04', 40, 130);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (131, DATE '2026-02-26', '울산대학교 화학과 졸업
위험물산업기사, 대기환경기사, 산업안전기사, 한국사 1급, 운전면허 2종, 운전가능

주 5일제/  지역무관
대기업, 공공기관
월 250~300만원 이상
분석, 연구, 환경, 안전 직무 희망

한국수력원자력 6개월 인턴 경력

자소설, 사람인, 잡코리아', NULL, DATE '2025-10-27', 32, 131);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (132, DATE '2026-03-03', '민원으로 인한 이관진행자
구직의지 높지 않음', NULL, DATE '2025-05-29', 21, 132);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (133, DATE '2026-03-05', '울과대 진행 자', NULL, DATE '2025-10-24', 23, 133);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (134, DATE '2026-02-27', NULL, NULL, DATE '2025-10-28', 28, 134);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (135, DATE '2026-02-27', '주 5일, 주 6일도 가능
정규직, 계약직, 인턴 관계 없음

중소기업만 아니면 지원, 평소에 본사홈페이지로 채용확인 후 입사지원
급여 및 사내복지 많이 보는 편

석유화학산업 분야로 취업희망', NULL, DATE '2025-10-31', 17, 135);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (136, DATE '2026-03-12', '울과대 진행 자


11/10일 면접 불합격

1. 울산(남구, 중구, 북구(호계, 매곡)
2. 부산

의원급 희망, 큰곳 비희망 (보건소 희망)', NULL, DATE '2025-11-18', 35, 136);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (137, DATE '2026-03-10', '풍산에서 1년 계약직 근무
무역사무원으로 근무 이력 존재 / 포워딩 x

울산 동구, 북구, 남구 (차타고 30분)
연봉 3,000만원 이상, 주 5일제만 희망
아기 출산한지 얼마 안됨
직장 어린이집 다님, 8시 30분 근무 가능

토익 700점. Itq 마스터, 워드, 운전면허 2종, 운전가능, 자차소유

애견미용사 자격증 취득
울산애견미용학원
2025-11-17 ~ 2026-05-21 ( 6회차)

27년 초에 구직활동 희망/ 26년에 구직의사 없음', NULL, DATE '2025-11-13', 29, 137);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (138, DATE '2026-03-10', '울과대 진행 자', NULL, DATE '2025-11-10', 25, 138);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (139, DATE '2026-03-05', '울과대 진행 자', NULL, DATE '2025-11-13', 24, 139);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (140, DATE '2026-02-24', '울과대 진행 자

사회복지사, 사무직 취업희망
울산전체 (울주군 가능)
운전면허 2종, 운전가능

사회복지 노인,/ 장애인 우선희망', NULL, DATE '2025-11-28', 40, 140);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (141, DATE '2026-03-12', '학과 확인 필요', NULL, DATE '2025-11-20', 30, 141);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (142, DATE '2025-11-06', '직업훈련 고려 중', NULL, DATE '2025-11-17', 26, 142);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (143, DATE '2026-02-26', '직업훈련 고려 중
일용근로 중/ 근로계약서 받음', NULL, DATE '2025-11-19', 24, 143);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (144, DATE '0263-02-23', '직업상담 직업훈련 고려 증/ 26년 1월~2월

차상위계층 설정이 됨/ 기초생계수급자 아님을 확인함
등본이 본가와 합쳐져 조만간 차상위계층 해제 예정', NULL, DATE '2025-11-17', 22, 144);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (145, DATE '2026-03-03', '직업훈련 추가 예정', NULL, DATE '2025-12-04', 28, 145);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (146, DATE '2026-03-10', NULL, NULL, DATE '2025-12-10', 23, 146);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (147, DATE '2026-03-18', '이관주소 확인', NULL, DATE '2025-07-23', 17, 147);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (148, DATE '2025-05-13', '이관진행', NULL, DATE '2025-05-28', 30, 148);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (149, DATE '2026-03-11', '직종미결정, 허리디스크 초기 단계
2월말~3월초 서울로 이사 예정

몸에 무리가 안가는 선에서 일하고 싶음
직업정보 찾아보지 않은 상태임.', NULL, DATE '2026-01-23', 18, 149);
INSERT INTO consultation (id, consult_date, raw_text, summary, iap_date, iap_period, client_id) VALUES (150, DATE '2026-03-06', '26년 신청자 훈련수당x', NULL, DATE '2026-01-27', 15, 150);

-- training
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (1, '산대특 챗GPT와 스테이블디퓨전을 활용한 영상편집 AI 크리에이터 포토샵 일러스트 프리미어 그린컴퓨터아카데미 회차', DATE '2024-07-30', DATE '2024-09-27', 'NONE', NULL, 1);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (2, '로컬 파이오니어 스쿨 기 영남권 주식회사 어반플레이', DATE '2024-06-28', NULL, 'UNPAID', TRUE, 2);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (3, '제과 디저트 실무 기초반 울산동구알비제과제빵바리스타학원 회차 제과 디저트 실무 심화반 울산동구알비제과제빵바리스타학원 회차', DATE '2024-07-16', NULL, 'PAID', TRUE, 3);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (4, '훈련분야 한식조리 훈련기관 자은쿡요리전문학원 훈련과정 한식조리기능사취득과정 실기 훈련기간 회차', DATE '2025-01-10', NULL, 'UNPAID', FALSE, 5);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (5, '과정평가형 자동차정비산업기사 자격증 취득과정 C 울산산업직업전문학교 회차', DATE '2024-07-06', NULL, 'PAID', TRUE, 6);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (6, '지게차자격증과정 실기A 울산중장비직업전문학교 회차', DATE '2024-07-22', DATE '2024-08-20', 'NONE', NULL, 7);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (7, '부일기획 외 개사 부산지역 광고 마케팅 일경험 프로그램 기 ㈜위드온라 사전교육 선발', DATE '2024-10-28', DATE '2025-01-10', NULL, NULL, 8);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (8, '간호조무사 자격증 취득과정 주간반 드림간호학원 회차', DATE '2024-09-23', NULL, 'NONE', TRUE, 9);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (9, '전산회계 급 자격증취득과정 B 그린컴퓨터아카데미 회차', DATE '2024-08-12', NULL, NULL, TRUE, 10);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (10, '제과제빵 자격증취득 이론 실기 케익데코반 한솔커피바리스타제과제빵요리학원 회차 제과 디저트 실무 심화반 울산동구알비제과제빵바리스타학원 회차 저당 베이킹 제과제빵 전문가 엠제빵커피학원 회차', DATE '2024-08-26', DATE '2025-01-23', 'NONE', NULL, 11);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (11, '산대특 중소기업 특화 멀티경리사무원 양성과정 울산직업전문학교 회차 레벨업 전산세무 급취득과정 G 울산다파컴퓨터디자인학원 회차', DATE '2024-08-20', NULL, 'PAID', TRUE, 12);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (12, '한솔커피바리스타제과제빵요리학원 제과제빵 자격증취득 이론 실기 케익데코반 회차', DATE '2024-08-26', NULL, 'NONE', TRUE, 13);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (13, '간호조무사 자격취득과정B 세계로간호학원 회차', DATE '2024-10-16', NULL, 'PAID', TRUE, 14);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (14, '제과제빵기능사 자격증 취득과정 이론 실기 울산동구알비제과제빵바리스타학원 회차', DATE '2024-09-20', NULL, 'PAID', TRUE, 15);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (15, '울산다파컴퓨터디자인학원 퍼펙트 ITQ 한글 엑셀 파워포인트 컴활 급 필기 실기 자격증 취득과정 B 회차 울산다파컴퓨터디자인학원 레벨업 전산세무회계자격증취득과정 전산회계 급 급 전산세무 급 B 회차', DATE '2024-11-05', NULL, NULL, TRUE, 17);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (16, '바리스타 자격증 과정 급 울산동구알비제과제빵바리스타학원', DATE '2024-10-05', DATE '2024-10-23', NULL, NULL, 18);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (17, '호텔바리스타 급 양성과정 바리스타 급 라떼아트 향상과정 스카이관광평생교육원 회차 ICA 국제바리스타 자격증 취득과정 바리스타 스킬 Lv 한솔커피바리스타제과제빵요리학원 회차', DATE '2024-12-23', DATE '2025-03-05', NULL, NULL, 19);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (18, '세무회계 전산세무회계 전산회계 급 전산세무 급 자격증 취득과정 그린컴퓨터아카데미 회차', DATE '2024-10-17', NULL, 'PAID', TRUE, 20);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (19, '제과제빵기능사 자격증 취득과정 이론 실기 울산동구알비제과제빵바리스타학원 회차 제과 디저트 자격증 급 취득과정 실기 울산동구알비제과제빵바리스타학원 회차 제빵 디저트 자격증 급 취득과정 실기 울산동구알비제과제빵바리스타학원 회차', DATE '2024-10-24', DATE '2024-10-17', 'PAID', NULL, 32);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (20, '요양보호사 자격취득과정A 주간 야간 세계로요양보호사교육원 회차', DATE '2024-11-06', NULL, 'PAID', TRUE, 34);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (21, '미래정보컴퓨터학원 총무사무원 컴퓨터활용능력 급 필기 실기 회차 커피바리스타 자격증 취득 국제EUCA 국내 급 퍼스트바리스타제과제빵학원 회차 일 변경예정 수요일 전산변경 커피바리스타 자격증 취득 국제EUCA 국내 급 퍼스트바리스타제과제빵학원 회차', DATE '2024-12-23', NULL, 'NONE', TRUE, 35);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (22, '바리스타 자격증 과정 급 홈카페마스터 울산동구알비제과제빵바리스타학원 회차 제과제빵기능사 자격증 취득과정 이론 실기 울산동구알비제과제빵바리스타학원 회차 제과 디저트 자격증 급 취득과정 실기 울산동구알비제과제빵바리스타학원 회차', DATE '2024-11-27', DATE '2025-06-03', 'PAID', NULL, 37);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (23, '컴퓨터활용능력 급 자격증 취득 울산직업전문학교 회차 전산회계 급 자격증 취득과정 엘리트전산세무회계학원 회차', DATE '2024-12-19', NULL, 'NONE', TRUE, 38);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (24, '훈련기관 세계로간호학원 훈련과정 간호조무사 자격 취득과정B 훈련기간 회차', DATE '2025-03-14', DATE '2026-03-06', 'NONE', NULL, 54);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (25, '내선공사 전기내선공사 기초기술자 양성과정 B 울산직업전문학교', DATE '2025-01-07', NULL, 'PAID', TRUE, 55);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (26, '산대특 AI기반 기계설계 및 D프린팅 CAD 인벤터 Fusion KH인재교육원', DATE '2025-01-04', NULL, 'PAID', TRUE, 56);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (27, '바리스타 자격증 과정 급 울산동구알비제과제빵바리스타학원 회차 제과제빵기능사 자격증 취득과정 이론 실기 울산동구알비제과제빵바리스타학원 회차', DATE '2025-02-06', NULL, 'PAID', TRUE, 64);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (28, 'DTP편집 sbs아카데밈컴퓨터아트학원', DATE '2025-02-05', NULL, 'PAID', TRUE, 65);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (29, '컴퓨터활용능력 급 자격취득 엘리트전산세무회계학원 회차', DATE '2025-02-10', NULL, 'NONE', TRUE, 66);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (30, '콘텐츠크리에이터 사무원 양성과정 여성새로일하기센터', DATE '2025-05-08', NULL, 'NONE', TRUE, 67);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (31, '미용사 피부 자격증과정 웰컴미용직업전문학교', DATE '2025-03-05', NULL, 'NONE', TRUE, 68);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (32, '제과제빵기능사 자격증 취득과정 이론 실기 울산동구알비제과제빵바리스타학원 회차', DATE '2025-03-21', NULL, 'NONE', TRUE, 69);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (33, '바리스타 자격증 과정 급 급 커피지도사 울산동구알비제과제빵바리스타학원 회차', DATE '2025-05-30', DATE '2025-08-11', 'NONE', NULL, 70);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (34, '사무행정 ITQ한글 엑셀 파워포인트 컴퓨터활용능력 급 울산직업전문학교 회차', DATE '2025-05-12', NULL, 'PAID', TRUE, 71);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (35, '나눔씨패스 청소년상담사 급 이론 기출 필수 청소년이해론 한국이러닝협회 회차', DATE '2025-04-17', DATE '2025-06-11', 'NONE', NULL, 72);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (36, '산대특 기계설계 자동차 부품설계 D D 및 CAD CAM CNC가공 울산기술직업전문학교 회차', DATE '2025-04-29', DATE '2025-10-14', 'NONE', NULL, 73);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (37, '훈련분야 지게차자격증실기 오전 A 훈련기관 이화중장비학원 훈련과정 지게차자격증실기 오전 A 훈련기간 회차', DATE '2025-06-25', NULL, 'NONE', TRUE, 74);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (38, '원패스 전산회계 급 종합반 필기 실기 사단법인 한국에듀테크산업협회 회차', DATE '2025-05-08', DATE '2025-06-04', 'NONE', NULL, 75);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (39, '훈련기관 울산동구알비제과제빵바리스타학원 훈련과정 제과 디저트 자격증 급 취득과정 실기 훈련기간 훈련기관 울산동구알비제과제빵바리스타학원 훈련과정 제과 디저트 자격증 급 취득과정 실기 훈련기간', DATE '2025-04-15', NULL, 'NONE', TRUE, 79);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (40, '훈련기관 엘리트전산세무회계학원 훈련과정 컴퓨터활용능력 급 자격취득 훈련기간 회차', DATE '2025-06-27', NULL, 'NONE', TRUE, 80);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (41, 'DTP편집 sbs아카데밈컴퓨터아트학원', DATE '2025-05-13', NULL, 'PAID', TRUE, 81);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (42, '편집디자인 포토샵 일러스트 실무자 양성과정 에스비에스아카데미컴퓨터아트학원 회차', DATE '2025-06-09', NULL, 'NONE', TRUE, 85);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (43, '산업안전 산업 기사 자격증 취득 필기과정A 울산직업전문학교 회차 훈련종료 후 직업훈련추가 희망', DATE '2025-05-23', NULL, 'NONE', TRUE, 87);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (44, '바리스타 자격증 과정 급 급 커피지도사 울산동구알비제과제빵바리스타학원 회차', DATE '2025-05-30', DATE '2025-08-12', 'NONE', NULL, 93);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (45, '세무회계 회계사무원 양성 전산세무 급 전산회계 급 미래정보컴퓨터학원 회차', DATE '2025-07-18', DATE '2025-09-10', 'NONE', NULL, 94);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (46, '퍼펙트 컴퓨터활용능력 급 자격증 실기 필기 I 울산다파컴퓨터디자인학원 회차', DATE '2025-06-20', NULL, 'PAID', TRUE, 96);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (47, '미용사 네일 국가자격증과정 울산미용직업전문학교 회차', DATE '2025-07-01', DATE '2025-10-14', 'NONE', NULL, 97);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (48, '미용사 네일 자격증과정 웰컴미용직업전문학교 회차', DATE '2025-09-10', DATE '2025-11-26', 'NONE', NULL, 98);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (49, '전산회계 전산회계 급 전산회계 급 자격증 취득 울산직업전문학교 회차', DATE '2025-08-01', DATE '2025-09-18', 'NONE', NULL, 101);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (50, '제과제빵 자격증취득 이론 실기 케익데코반 한솔커피바리스타제과제빵요리학원 회차', DATE '2025-07-16', DATE '2025-09-19', 'NONE', NULL, 102);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (51, '사무행정 ITQ한글 엑셀 파워포인트 컴퓨터활용능력 급 울산직업전문학교 회차', DATE '2025-07-28', NULL, 'PAID', FALSE, 103);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (52, '커피바리스타 자격증 취득 국제EUCA 국내 급 퍼스트바리스타제과제빵학원 회차', DATE '2025-07-22', NULL, 'NONE', FALSE, 104);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (53, '웹디자인 에스비에스아카데미컴퓨터아트학원 회차', DATE '2025-07-19', NULL, 'PAID', TRUE, 106);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (54, '훈련기관 울산 우리컴퓨터아카데미 훈련과정 ITQ 한글 엑셀 파워포인트 자격증 취득 훈련기간 회차 훈련분야 사무행정 훈련기관 울산 우리컴퓨터아카데미 훈련과정 컴퓨터활용능력 급 실기 엑셀 자격증 취득 훈련기간 회차', DATE '2025-09-05', DATE '2026-01-17', NULL, NULL, 108);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (55, '훈련기관 스카이관광평생교육원 훈련과정 호텔바리스타 급 양성과정 훈련기간 회차', DATE '2025-09-24', DATE '2025-10-30', 'NONE', NULL, 109);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (56, '바리스타 자격증 과정 급 급 커피지도사 울산동구알비제과제빵바리스타학원 회차', DATE '2025-08-13', NULL, 'PAID', TRUE, 112);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (57, '컴퓨터활용능력 급 자격취득 엘리트전산세무회계학원 회차 훈련기관 울산도배타일기술학원 훈련과정 타일 욕실리모델링 반짝이줄눈 훈련기간 회차', DATE '2025-09-08', DATE '2026-01-07', NULL, NULL, 114);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (58, '산대특 AI디자인 영상콘텐츠 실무제작 피그마 미드저니 캡컷 브루 육성과정 그린컴퓨터학원', DATE '2026-01-20', DATE '2026-03-11', 'NONE', NULL, 116);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (59, '퍼펙트 컴퓨터활용능력 급 자격증 실기 필기 A 울산다파컴퓨터디자인학원 회차', DATE '2025-10-29', NULL, NULL, TRUE, 120);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (60, '메이크업정규 메이크업국가자격증 올댓뷰티아데미 부산 ∼', DATE '2025-09-30', NULL, NULL, TRUE, 121);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (61, 'KT AIVLE School 대한상공회의소 회차', DATE '2025-09-23', DATE '2026-03-06', 'UNPAID', NULL, 123);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (62, '전산회계 전산회계 급 전산회계 급 자격증 취득 울산직업전문학교 회차', DATE '2025-12-04', DATE '2026-01-19', 'UNPAID', NULL, 124);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (63, '훈련기관 이화중장비학원 훈련과정 지게차자격증실기 오전 A 훈련기간 회차', DATE '2026-02-25', DATE '2026-03-18', NULL, NULL, 128);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (64, 'D그래픽 포토샵 일러스트 편집디자인 기초 A 그린컴퓨터아카데미 회차', NULL, NULL, 'NONE', NULL, 129);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (65, '컴퓨터활용능력 급 자격증 실기 취득과정 A 회차 그린컴퓨터아카데미', DATE '2025-12-01', DATE '2025-12-31', NULL, NULL, 131);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (66, '애견미용사 자격증 취득 울산애견미용학원 회차', DATE '2025-11-17', DATE '2026-05-21', NULL, NULL, 137);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (67, '훈련기관 KH인재교육원 훈련과정 시간완성 시각편집디자인 그래픽기술자격 포토샵GTQ 급 일러스트GTQi 급 취득 과정 훈련기간 회차', DATE '2025-12-22', DATE '2026-02-25', NULL, NULL, 143);
INSERT INTO training (id, course_name, start_date, end_date, allowance, completed, client_id) VALUES (68, '바리스타 자격증 과정 급 급 커피지도사 울산동구알비제과제빵바리스타학원 ITQ 한글 엑셀 파워포인트 컴활 급 필기 실기 자격증 취득과정 E 울산다파컴퓨터디자인학원 회차', DATE '2025-10-27', DATE '2025-12-31', 'NONE', NULL, 145);

-- employment
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (1, '남목청소년센터', '청소년지도사', 2622300, DATE '2025-01-02', NULL, 4);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (2, '제이이유(JEU)바리스타학원', '바리스타', 1200000, DATE '2025-04-16', DATE '2025-06-29', 5);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (3, '모트라스주식회사', '생산직', 3600000, DATE '2025-05-07', DATE '2025-08-31', 6);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (4, '텐퍼센트로스터스', '바리스타', 2100000, DATE '2025-02-03', NULL, 8);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (5, '리안산후조리원', '간호조무사', 2160000, DATE '2025-11-03', NULL, 9);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (6, '에이치디현대중공업주식회사', '총무 및 일반사무원', 3466358, DATE '2025-06-16', NULL, 12);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (7, '노블레스요양병원', '병원헹정사무원', 2796270, DATE '2025-11-10', NULL, 14);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (8, '세종학당재단(KingSejongInstituteFoundation)', '한국어강사', 2126800, DATE '2025-02-26', NULL, 17);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (9, '주식회사지에스텍', '캐드원', 2200000, DATE '2025-02-03', NULL, 18);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (10, '이솝서부주식회사', '사무보조', 1800000, DATE '2025-02-01', NULL, 20);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (11, '엔진튜브텍', '품질관리사무원', 2700000, DATE '2024-04-25', NULL, 21);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (12, '모스원주식회사-강선건조업', '메이드', 2060740, DATE '2024-06-01', NULL, 22);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (13, '정용기업', '파이프 조립원', 2798770, DATE '2024-05-03', NULL, 23);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (14, '울산공업학원울산대학교병원', '간호조무사', 2500000, DATE '2024-08-01', NULL, 24);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (15, 'e편한세상2단지어린이집', '보육교사', 1068000, DATE '2024-08-01', NULL, 25);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (16, '(재단법인)포항성모병원', '간호사', 2300000, DATE '2024-09-23', DATE '2024-11-28', 26);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (17, '울산과학대학교산학협력단', '총무 사무원 및 대학 행정조교', 2493700, DATE '2024-11-16', DATE '2025-04-01', 28);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (18, '태성기술유한회사', '안전관리자', 2200000, DATE '2024-05-01', DATE '2024-12-02', 29);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (19, '영인물류(주)', '지게차운전원', 2500000, DATE '2024-05-22', NULL, 30);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (20, '(주)동구운수', '버스운전원', 3000000, DATE '2024-08-20', DATE '2024-08-23', 31);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (21, '동구가정.성폭력통합상담소', '전문 상담사', 2060800, DATE '2024-11-18', NULL, 33);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (22, '주식회사현우서비스', '미화원', 2144800, DATE '2025-01-01', NULL, 34);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (23, '(주)현대캐터링시스템', '바리스타', 1445000, DATE '2025-04-07', NULL, 35);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (24, '사단법인 피난처', '일반사무원', 2600000, DATE '2025-02-01', NULL, 38);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (25, '울산시동구청', '공무원', 3400000, DATE '2024-03-14', NULL, 43);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (26, '(의)송은의료재단울산시티병원', '간호사', 3800000, DATE '2024-03-04', NULL, 44);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (27, '한솔신약㈜', '품질관리사무원', 2683770, DATE '2025-02-03', NULL, 45);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (28, '인탑스(주)4공장', '안전관리자', 3500000, DATE '2025-02-10', NULL, 48);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (29, '㈜오뚜기', '생산관리사무원', 3450000, DATE '2025-08-11', NULL, 49);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (30, '(주)현대캐터링시스템', '조리사', 1392000, DATE '2024-07-01', NULL, 50);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (31, '한국금융안전(주)', '경비원', 400000, DATE '2025-07-14', NULL, 52);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (32, '국민건강보험공단', '총무 및 일반사무원', 2396270, DATE '2025-06-12', NULL, 53);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (33, '주식회사엔와이엘이디', '전기설치원', 2600000, DATE '2025-07-01', NULL, 55);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (34, '주식회사에스이에스', '비서', 2800000, DATE '2024-08-26', NULL, 58);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (35, '대원기업', '용접원', 4500000, DATE '2025-02-05', NULL, 63);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (36, '청운어린이집', '보육교사', 1100000, DATE '2025-06-17', NULL, 66);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (37, '테이크원뮤직', '영상편집디자이너', 650000, DATE '2025-09-01', NULL, 67);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (38, '데자뷰메디스킨울산점', '사무보조', 2400000, DATE '2025-07-28', DATE '2025-09-18', 68);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (39, '다시봄치과', '치과위생사', 2100000, DATE '2025-11-14', NULL, 71);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (40, '대광이앤씨주식회사', '도장원', 2100000, DATE '2025-08-11', NULL, 74);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (41, '울산제일안과의원', '안경사', 2200000, DATE '2025-10-13', NULL, 75);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (42, '주식회사현대에스리크루트', '사무보조', 2500000, DATE '2025-07-07', NULL, 76);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (43, '한주라이트메탈주식회사', '생산 및 품질관리사무원', 3400000, DATE '2025-08-04', NULL, 83);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (44, '주식회사삼오이엔지', 'CNC 선반 조작원', 3000000, DATE '2026-01-08', NULL, 87);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (45, '태건이앤씨(주)', '도장원', 2300000, DATE '2025-11-10', NULL, 89);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (46, '(주)위드인잡', '기타 제조 단순종사원', 2600000, DATE '2025-11-10', NULL, 90);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (47, '마마파파산부인과의원', '간호조무사', 2500000, DATE '2025-07-02', NULL, 91);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (48, '(주)서울커뮤니케이션', '경영지원 사무원', 2550000, DATE '2025-12-08', NULL, 92);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (49, '주식회사 파파앤썬(동구현대백화점)', '바리스타', NULL, DATE '2025-10-09', NULL, 93);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (50, '(주)우림엠에스', '기타 제조 단순종사원', 2297000, DATE '2025-10-23', NULL, 95);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (51, '국민요양병원', '경비원', 2416930, DATE '2025-09-01', NULL, 103);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (52, '대륙유니엔', '기타 제조 단순종사원', 3000000, DATE '2025-09-08', NULL, 105);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (53, '엠탑수학학원', '수학강사', 2000000, DATE '2026-01-05', NULL, 106);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (54, '대성티에스주식회사', '기타 제조 단순종사원', 2300000, DATE '2025-08-19', NULL, 110);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (55, '에이치디현대사이트솔루션주식회사', '회계사무원', 3875533, DATE '2025-08-11', NULL, 111);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (56, '(주)이랜드월드', '판매원', 2134236, DATE '2025-12-30', NULL, 118);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (57, '사랑손길주간보호센터', '간호조무사', 2160000, DATE '2026-02-01', NULL, 127);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (58, '울산시동구청', '사무보조', 2900000, DATE '2026-02-02', NULL, 132);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (59, '미담치과', '치과위생사', 2156880, DATE '2026-01-07', NULL, 133);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (60, '타임치과', '치과위생사', 2027550, DATE '2026-01-05', NULL, 136);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (61, '강앤이치과의원', '차과위생사', 1800000, DATE '2026-01-05', NULL, 138);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (62, '부산샬롬치과의원', '치과위생사', 2363880, DATE '2026-01-05', NULL, 139);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (63, '울산과학대학교산학협력단', '경영지원 사무원', 2649400, DATE '2026-01-01', NULL, 143);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (64, '사단법인현주', '사회복지사', 2600000, DATE '2026-01-01', DATE '2026-01-30', 144);
INSERT INTO employment (id, company_name, job_title, salary, employ_date, resign_date, client_id) VALUES (65, '티에이시스템(주)', '컴퓨터시스템 전문가', 2300000, DATE '2026-01-19', NULL, 147);

-- Optional sequence reset for PostgreSQL
SELECT setval(pg_get_serial_sequence('clients', 'id'), COALESCE((SELECT MAX(id) FROM clients), 1), true);
SELECT setval(pg_get_serial_sequence('consultation', 'id'), COALESCE((SELECT MAX(id) FROM consultation), 1), true);
SELECT setval(pg_get_serial_sequence('training', 'id'), COALESCE((SELECT MAX(id) FROM training), 1), true);
SELECT setval(pg_get_serial_sequence('employment', 'id'), COALESCE((SELECT MAX(id) FROM employment), 1), true);

COMMIT;