
-- 수정
 UPDATE member SET address = null WHERE seq = 11;

-- 시작
-- ALTER TABLE member AUTO_INCREMENT = 10;

-- 삭제 
 delete from member where seq = 12;	

-- 컬럼 삭제
-- ALTER TABLE `member` DROP `nameEng`;

-- 컬럼 이름 변경
-- ALTER TABLE product RENAME COLUMN adrress TO address;

