use CJ2;

select * from cc;

alter table cc add delNy varchar(45) after useNy;   

SELECT
		c.seq
		,c.ccg_seq
		,(select codeGroup from ccg d where d.seq = c.ccg_seq) as codeGroup
		,c.codeName
		,c.codeNameEn
		,c.useNy
		,c.sort
		,c.reg_date
		,c.mod_date
		FROM cc c
        LEFT JOIN ccg d on c.ccg_seq = d.seq
		where 1=1
        ;
        
        select
		seq
		,codeGroup
		from ccg
        
alter table cc add delNy varchar(45) after useNy;   