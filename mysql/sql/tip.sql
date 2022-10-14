Use CJ2;


-- 수정
-- UPDATE product SET id = "" WHERE seq = 9;

-- 시작
 ALTER TABLE member AUTO_INCREMENT = 11;

-- 삭제 
 delete from product where seq = 11;

-- 추가
 alter table member add adminNy int after seq;

-- 컬럼 삭제
 ALTER TABLE `product` DROP `brand`;

-- 컬럼 이름 변경
 ALTER TABLE productUploaded RENAME COLUMN seq TO uploadedSeq;

-- RENAME TABLE orderr TO orders;

alter table member modify column gender int;


Drop table ccg;

-- 테이블 이름 변경

ALTER TABLE locnLocationUploaded RENAME productUploaded;


