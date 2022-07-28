use CJ2;

INSERT INTO member (
	name
    ,id
    ,dob
    ,tel
    ,gender
    ,email
    ,adrress
    ,pwd
    ,zipcode
    )
    
    VALUES (
		"I"
        ,"asdf9"
        ,"950522"
        ,"01088888888"
        ,"F"
        ,"asdf9@naver.com"
        ,"seoul"
        ,"7777"
        ,"38321"
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
    ,pwd
    ,zipcode
    
    FROM member
    
    -- WHERE 1=1
		-- AND seq = 1
        -- AND name ="Chanjoong"
        -- AND gender = "M"
        -- AND pwd = "4444"
        -- AND dob = "950531"
        -- AND email = "kdw12@naver.com"
        -- AND adrress = "busan"
		-- AND zipcode = "56789"
        -- AND id = "kdw12"
        -- AND tel = "01077777777"
    ;    
    
	INSERT INTO product (
		seq
		)
    
		Values (
        1
	)
	;
    
    INSERT INTO orderr (
		member_seq
        ,product_seq
        ,payment_method
        )
        
        Values (
        "5"
        ,"1"
        ,"kakaopay"
        )
        ;
        
        SELECT * FROM member;
        SELECT * FROM orderr;
		
    
    
  
  
    

    