SELECT * FROM CJ2.cc;

select
c.seq
,c.ccg_seq
,d.codeGroup
,c.codeName
,c.codeNameEn
,c.useNy
,c.sort
,c.reg_date
,c.mod_date
from cc c
left join ccg d on c.ccg_seq = d.seq
order by d.seq asc
;

select * from cc;