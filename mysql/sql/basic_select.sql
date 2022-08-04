use CJ2;

select * from member;

-- select count(*) from member;

select
	a.seq
	,a.id
    ,a.name
    ,b.quantity
from member a
left join orders b on b.member_seq = a.seq
-- inner join orders b on b.member_seq = a.seq
;
