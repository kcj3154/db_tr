use CJ2;

select * from product;


alter table product change product_number productNumber varchar(45);
alter table product modify column deliveryPrice varchar(45);

alter table product add deliveryPrice int after productDiscountPrice ;