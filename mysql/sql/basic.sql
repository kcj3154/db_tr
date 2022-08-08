-- CJ2 database를 사용
USE CJ2;

-- ********************중요******************** 
-- 테이블 수정 전에 항상 꼭 반드시 진짜로 ER부터 수정
-- ********************중요********************


-- 전체 컬럼 조회
-- SELECT * from member2;

-- 컬럼 추가
-- ALTER TABLE member ADD COLUMN emailCode varchar(45);
 
-- ALTER TABLE member ADD COLUMN telecomCode varchar(45) AFTER tel

-- 컬럼 변경
-- ALTER TABLE member2 MODIFY COLUMN nickname varchar(100);

-- 컬럼 이름 변경
-- ALTER TABLE delivery CHANGE COLUMN deliveryDate arrivalDate Date;

-- 컬럼 삭제
-- ALTER TABLE member drop COLUMN emailCode;
 
 -- row 삭제
 
 -- DELETE FROM member WHERE seq = 10;

 -- commit / rollback
 
-- SELECT * from member2;

-- 데이터 수정
-- UPDATE member2 SET
-- name = ""
-- , nameENG=""
-- where seq =1;

-- where

-- SELECT * FROM member
-- WHERE 1=1
-- AND name like 'C%'
-- ANd name like '%C'
-- AND name like '%C%'
;

SELECT * FROM member
WHERE 1=1
-- AND seq = 1
-- AND seq > 1
-- AND seq >= 1
AND seq between 4 and 7
;

SELECT * FROM member
WHERE 1=1
-- AND address is null
AND address = ''
-- AND address = null
;

-- 로그인
select * from member where id = "kcj3154" and pwd="1234"
;
