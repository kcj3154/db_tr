-- CJ2 database를 사용
USE CJ2;

-- ********************중요******************** 
-- 테이블 수정 전에 항상 꼭 반드시 진짜로 ER부터 수정
-- ********************중요********************


-- 전체 컬럼 조회
SELECT * from member2;

-- 컬럼 추가
-- ALTER TABLE member2 ADD COLUMN nickname varchar(45);

-- ALTER TABLE member2 ADD COLUMN nameEng varchar(45) AFTER name

-- 컬럼 변경
-- ALTER TABLE member2 MODIFY COLUMN nickname varchar(100);

-- 컬럼 이름 변경
-- ALTER TABLE member2 CHANGE COLUMN nickname nick varchar(45);

-- 컬럼 삭제
 -- ALTER TABLE member2 drop COLUMN nick;
 
 -- row 삭제
 
 -- DELETE FROM member WHERE seq = 10;
 
 -- commit / rollback
 
 SELECT * from member2;

-- 데이터 수정
-- UPDATE member2 SET
-- name = ""
-- , nameENG=""
-- where seq =1;