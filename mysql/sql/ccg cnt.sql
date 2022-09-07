use CJ2;


	SELECT
			a.seq
			,a.codeGroup
			,a.codeGroupEn
			,a.useNy
			,a.reg_date
			,a.mod_date
			,(select count(b.seq) from cc b where b.ccg_seq = a.seq) as cnt
		FROM ccg a
		where 1=1