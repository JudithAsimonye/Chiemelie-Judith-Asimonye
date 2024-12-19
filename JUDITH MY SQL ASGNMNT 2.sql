select*
from product_data.product_table;

alter table product_table rename producttable;

alter table producttable
modify Discount_price decimal (5,2)
after Product_Name;

alter table producttable
add Quantity varchar (50);

alter table producttable
drop Quantity;

alter table producttable
add Quantity int;

insert into producttable
value (101,'Mango',150.11,200.50,20),
	  (102,'Banana',250.12,300.16,40),
      (103,'Pawpaw',300.16,350.20,60),
      (104,'Avocado',350.07,378.13,80),
      (105,'Orange',380.28,400.16,100),
      (106,'Cashew',50.02,100.18,120),
      (107,'Carrot',550.20,600.12,140),
      (108,'Panaple',600.17,700.13,160),
      (109,'Apple',780.18,900.14,180),
      (110,'Guava',100.19,150.11,200);

select*
from producttable;

select Product_ID,Product_Name
from producttable;

select*
from producttable
where Price between 100 and 600;

alter table producttable
drop Quantity;

select*
from producttable;