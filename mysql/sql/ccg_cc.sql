use CJ2;

 select * from ccg;

 select
 a.seq
 ,a.codeGroup
 ,b.seq
 ,b.codeName
 from ccg a
 left join cc b on b.ccg_seq = a.seq