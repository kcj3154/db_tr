-- CJ2 database를 사용
USE CJ2;

-- 전체 컬럼 조회
SELECT * from member2;

-- 컬럼 추가
-- ALTER TABLE member2 ADD COLUMN nickname varchar(45);

-- ALTER TABLE member2 ADD COLUMN nameEng varchar(45) AFTER name

-- 컬럼 변경
-- ALTER TABLE member2 MODIFY COLUMN nickname varchar(100);

-- 컬럼 이름 변경
-- ALTER TABLE member2 CHANGE COLUMN nickname nick varchar(45);

