Use CJ2;


-- 수정
-- UPDATE product SET id = "" WHERE seq = 9;

-- 시작
 ALTER TABLE member AUTO_INCREMENT = 11;

-- 삭제 
 delete from member where seq = 13;

-- 추가
 alter table member add adminNy int after seq;

-- 컬럼 삭제
 ALTER TABLE `member` DROP ``;

-- 컬럼 이름 변경
-- ALTER TABLE favorite RENAME COLUMN product_seq1 TO product_seq;

-- RENAME TABLE orderr TO orders;

alter table member modify column gender int;


Drop table ccg;

