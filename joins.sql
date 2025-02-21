-- joins 
-- sql => 1 or 1 more table join
-- consistancy
-- null naa aaye
use sakila;
select * from address;
select count(address_id) from address;
select count(address2) from address;
select count(*) from address;


create database test1;

use test1;
create table product(pid int, name varchar(20), price int);
insert into product values(10,"tv",100),(20,"apple",200),
(30,"mobile",300),(40,"shoe",1500);


select * from product;

create table orders(oid varchar(20), city varchar(20),
product_id int);
insert into orders values('A1012','Jaipur',10),
('B21012','Goa',20), ('C3012','Japan',30),('D4012','uK',60);
select * from orders;

SELECT pid,name,price,city
from product as p 
inner join orders as o
on p.pid=o.product_id; -- we can use where abd on in inner join


-- left joain 
SELECT pid,name,price,city
from product as p 
left join orders as o
on p.pid=o.product_id;

-- right join
SELECT pid,name,price,city
from product as p 
right join orders as o
on p.pid=o.product_id;

-- nonequi join



select * from orders q f4
insert into orders values ("E2132","JK",10),("F213","MH",30);