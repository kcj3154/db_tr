use CJ2;

-- 공통코드
 select
 a.seq
 ,a.codeGroup
 ,b.seq
 ,b.codeName
 from ccg a
 left join cc b on b.ccg_seq = a.seq
 ;
 
 -- 로그인
 select id, pwd from member where id = "kcj3154" and pwd = "1234"
 ;

-- 회원가입




-- 메인.상품목록
select
seq
,name
,discount_percent
,price_discount
,price_original
,rating
from product
;




-- 제품상세
select 
seq
,category
,brand
,name
,rating
,discount_percent
,price_discount
,price_original
,country_of_origin
,product_number
from product where seq = 1
;

-- 제품상세.상품평.목록




select 
a.seq
,a.id
,a.name
,a.tel
,a.address
,b.seq
,b.quantity
,b.price
,b.orderDate

from member a
left join orders b on b.member_seq=a.seq





