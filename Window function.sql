use regex1;

create table empl(id int primary key auto_increment, dept varchar(20), salary int);

insert into empl(dept, salary) values ("hr",200),("hr",300),("hr",100),("marketing",70),("marketing",50),("marketing",200),("marketing",400),("marketing",200),("marketing",600),("dsa",40),("dsa",90),("dsa",500);


select *, 
sum(salary) over(), max(salary) over(), avg(salary) over()
from empl;

-- window partion by

select * , sum(salary) over(), sum(salary) over(partition by dept) from empl;

-- for running sum
select *, sum(salary) over(order by salary) from empl;

select *, sum(salary) over(partition by dept order by salary) from empl;

-- avg salary of each dept running avg of each dept
select *, avg(salary) over(partition by dept), avg(salary) over(partition by dept order by salary) from empl; 

-- raw number
select*,  row_number() over()
from empl;

-- rank

select *, rank() over() from empl;

select *, rank() over(order by salary) from empl;

select *, rank() over(partition by dept order by salary) from empl;

select *, lag(salary) over() from empl;
select *, lead(salary,2) over() from empl;
select *, ntile(4) over(order by salary) from empl;

select *, dense_rank() over(order by salary) from empl;


