use CJ2;

INSERT INTO member (
	name
    ,id
    ,dob
    ,tel
    ,gender
    ,email
    ,address
    ,pwd
    ,zipcode
    )
    
    VALUES (
		"J"
        ,"asd9"
        ,"950522"
        ,"01088888888"
        ,"F"
        ,"asd9@gmail.com"
        ,"인천"
        ,"8765"
		,"12343"
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
	,address
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
        -- AND address "busan"
		-- AND zipcode = "56789"
        -- AND id = "kdw12"
        -- AND tel = "01077777777"
    ;    
    
INSERT INTO product (
	seq
	,category
    ,brand
    ,name
	,rating
    ,discount_percent
    ,price_original
    ,price_discount
    ,country_of_origin
    ,product_number
    )
    
    Values (
   2
   ,"햄 통조림"
   ,"동원"
   ,"비비고 삼계탕"
   ,"5"
   ,"18"
   ,"29940"
   ,"24420"
   ,"국내산"
   ,"1331834602 - 318165234"
)
;

SELECT
seq
category
,brand
,name
,rating
,discount_percent
,price_original
,price_discount
,country_of_origin
,product_number
    
FROM product;



    
INSERT INTO orders (
	
	price
	,quantity
    ,product_seq
    ,member_seq
    ,orderDate
	)
	
	Values (
	
	""
	,""
	,""
    ,""
    ,""
    )
	;

SELECT
	seq
	,price
	,quantity
    ,product_seq
    ,member_seq
    ,orderDate
	
    From orders;
    
    
    INSERT INTO delivery (
		orders_seq
        ,arrivalDate
        )
        
		Values (
        "10"
        ,"2022-08-04"
        )
        ;
   
	SELECT
    orders_seq
	,arrivalDate
    
    From depayment_methodlivery;
        
    
    INSERT INTO payment (
		orders_seq
        ,payment_method
        )
        
        
		Values (
        "10"
		,"creditCard"
        )
        ;
        
        
        SELECT
        orders_seq
        ,payment_method
	
        From payment;
        

INSERT INTO ccg (
	seq
	,codeGroup
    ,useNy
    )
    
    Values (
    "3"
    ,"gender"
    ,"1"
    )
    ;
    
    SELECT
    seq
    ,codeGroup
    ,useNy
    
    From ccg;
        
        
        
        
        
        
        SELECT * FROM ccg;
        SELECT * FROM member; 
        SELECT * FROM orders;
        

    
    
    
    
    
    
		
    
    
  
  
    

    