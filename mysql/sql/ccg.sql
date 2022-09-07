use CJ2;


        
        
INSERT INTO ccg (
	codeGroup
    ,codeGroupEn
    ,useNy
)
VALUES (
	'통신사'
    ,'carrier'
    ,1
)
;	

SELECT * FROM CJ2.ccg;

SELECT
			a.seq
			,a.codeGroup
			,a.codeGroupEn
			,a.useNy
			,a.reg_date
			,a.mod_date
			
		FROM ccg a
		LEFT JOIN cc b on a.seq = b.ccg_seq