use employees;
show tables;
select * from employees;

create table emp(eid int primary key,name varchar(20),salary int,  department_id int);
INSERT INTO emp VALUES 
(1, 'Tushar', 600, 10),
(2, 'Aman', 100, 10),
(3, 'Shubham', 50, 10),
(4, 'Surbhi', 900, 11),
(5, 'Naina', 260, 11);

select * from emp;

-- i neesd to get empid fiestname salary dpid only emp where salary > then avg(salary of his department

INSERT INTO emp VALUES 
(1, 'Tushar', 600, 10),
(2, 'Aman', 100, 10),
(3, 'Shubham', 50, 10),
(4, 'Surbhi', 900, 11),
(5, 'Naina', 260, 11);

select * from emp where salary >
(select  avg(salary)
from emp as e 
where emp.department_id = e.department_id
group by e.department_id);


create table ore1(oid int, o_name varchar(20));
insert into ore1 values(1,"ABC"),(2,"XYZ");
select * from ore1;

create table ore2(oid int, o_name varchar(20));
insert into ore2 values(3,"qwe"),(4,"456");
select * from ore2;

select * from ore1 where exists( select o_name from ore2 where ore1.oid=ore2.oid);


use employees;
select * from employees;
desc employees;
select * from departments;
select * from salaries;
select * from titles;
desc titles;

-- emp salary < 10003 

select emp_no from salaries where salary  <all (select salary from salaries where emp_no = 10003);

-- join emp and title empno firstname title

select e.emp_no, e.first_name, t.title from employees as e join titles as t where title = "Manager" ;
-- title = manager 110022, 110039, 110085
-- all emp name posistion <> manager
select e.emp_no, e.first_name, t.title from employees as e join titles as t where title <> "Manager";
-- i need to get a emp no fname l name title from emp table where currernt posistion is manager and also work on any other posistion before.

select e.emp_no, e.first_name, t.title from employees as e join titles as t where title = "Manager" and e.emp_no = any (
select e.emp_no from employees as e join titles as t using (emp_no) where t.title <> "Manager");

select e.emp_no , e.first_name, t.title from employees as e join titles as t where t.title = "Manager" ;

-- empno f name titel and the hire datae for all the employees

select e.emp_no , e.first_name, t.title, e.hire_date from employees as e join titles as t where title = "Assistant Engineer";

select e.emp_no , e.first_name, t.title, e.hire_date from employees as e join titles as t where title = "Manager";

select e.emp_no , e.first_name, t.title, e.hire_date from employees as e join titles as t where e.hire_date<(select  min(e.hire_date) from employees as e join titles as t where  title = "Manager");

-- title get the emp no title posistion year of hire date of current manager where the person has been permoted to manager in same here

select e.emp_no , e.first_name, t.title, year(e.hire_date) from employees as e join titles as t where title = "Manager" and e.emp_no in (select  e.emp_no from employees as e join titles as t where t.title <> "Manager") and year(e.hire_date) in (select   year(e.hire_date) from employees as e join titles as t where t.title <> "Manager");