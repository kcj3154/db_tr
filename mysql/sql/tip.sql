Use CJ2;


-- 수정
-- UPDATE product SET id = "" WHERE seq = 9;

-- 시작
 ALTER TABLE member AUTO_INCREMENT = 11;

-- 삭제 
 delete from product where seq = 1;

-- 추가
 alter table mainProductUploaded add regDateTimeSvr datetime after regDateTime ;

-- 컬럼 삭제
 ALTER TABLE `product` DROP `idproduct`;

-- 컬럼 이름 변경
 ALTER TABLE mainProductUploaded RENAME COLUMN regDevicedCd TO regDeviceCd;

-- RENAME TABLE orderr TO orders;

alter table memberUploaded modify column regSeq bigint;

Drop table ccg;

-- 테이블 이름 변경

ALTER TABLE locnLocationUploaded RENAME productUploaded;


