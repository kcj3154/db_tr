use CJ2;

INSERT INTO memberr(
	name
    ,id
    ,dob
    ,tel
    ,gender
    ,email
    ,adrress
    )
    
    VALUES (
		"Chanjoong"
        ,"kcj3154"
        ,"950531"
        ,"01094643154"
        ,"M"
        ,"kcj0531@naver.com"
        ,"seoul"
	)
    ;
    
SELECT
	seq
	,name
	,id
	,dob
	,tel
	,gender
	,email
	,adrress
FROM memberr
WHERE
	-- seq = 1
    -- name = "Chanjoong"
	id = "kcj3154"
    AND dob = "950531"
    
;