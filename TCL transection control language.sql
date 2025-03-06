set autocommit = 0;

use regex1;

create table yash(id int, fname varchar(20));
insert into yash values(10,"subham");
select * from yash;

commit;

insert into yash values(11,"aman");
commit;
select * from yash;

rollback;
select * from yash;

insert into yash values(12,"nidhi");
update yash set fname = "regex";
select * from yash;

create table dd(id int);
select * from yash;
insert into yash values(14,"isha");
select * from yash;
update yash set fname = "uu";
savepoint yash_raj_123;

insert into yash values(14,"pp");
select * from yash;

rollback to yash_raj_123;
select * from yash;


