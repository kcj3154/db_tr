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
		"K"
        ,"asdf11"
        ,"950520"
        ,"01010101010"
        ,"M"
        ,"asdf11@naver.com"
        ,""
        ,"9999"
		,"93595"
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
        
INSERT INTO product (
	category
    ,image
    ,brand
    ,name
	,rating
    ,discount_percent
    ,price_original
    ,price_discount
    ,delivery_info
    ,detailImage
    ,country_of_origin
    ,ingestion_method
    ,product_number
    )
    
    Values (
    "햄통조림"
    ,""
    ,"동원"
    ,"비비고 삼계탕"
    ,"5"
    ,"18"
    ,"29940"
    ,"24420"
    ,"7월19일"
    ,""
    ,"상품 상세설명 참조"
    ,"즉석완조리식품"
    ,"1331834602 - 318165234"
)
;

SELECT
seq
category
,image
,brand
,name
,rating
,discount_percent
,price_original
,price_discount
,delivery_info
,detailImage
,country_of_origin
,ingestion_method
,product_number
    
FROM product;
    
    
    
    
    
    
		
    
    
  
  
    

    