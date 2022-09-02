use CJ2;

SELECT * FROM CJ2.ccg;

SELECT
			a.seq
			,a.codeGroup
			,a.codeGroupEn
			,a.useNy
			,a.reg_date
			,a.mod_date
			,COUNT(*) cnt
		FROM ccg a
		LEFT JOIN cc b on a.seq = b.ccg_seq
		GROUP BY a.seq
        
        
