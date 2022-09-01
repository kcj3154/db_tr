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

select
	a.seq
	,a.id
    ,a.name
    ,(select quantity from orders b where b.member_seq = a.seq) as quantity
from member a

order by
	a.id
    , a.name
    -- a.id asc
    -- a.id desc
;


select
	a.seq
	,a.id
    ,a.name
    ,b.quantity
from member a
left join orders b on b.member_seq = a.seq
-- inner join orders b on b.member_seq = a.seq
where 1=1
	and quantity like '%1%'
union
select
	a.seq
	,a.id
    ,a.name
    ,b.quantity
from member a
left join orders b on b.member_seq = a.seq
-- inner join orders b on b.member_seq = a.seq
where 1=1
	and quantity like '%2%'
    ;

