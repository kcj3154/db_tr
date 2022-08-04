use CJ2;

select * from ccg;

select
	a.seq
    ,a.codeGroup
    ,b.seq
    ,b.codeName
from ccg a
left join cc b on b.ccg_seq = a.seq



-- 로그인
-- select * from member where id = "kcj3154" and pwd="1234"
;

-- 회원가입
