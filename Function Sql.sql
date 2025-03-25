use sakila;

use sakila;

show tables;

describe actor;


SELECT * 
FROM actor WHERE actor_id >2 OR first_name = "JOHNNY";

SELECT * 
FROM actor WHERE (first_name = "NICK" OR first_name = "ED") and actor_id>2;


-- Functions
-- block of code => code reusable
-- code redable

-- pre define 
-- string function
SELECT first_name, lower(first_name), upper(lower(first_name))
FROM actor;

SELECT first_name, last_name, concat(first_name,"_" ,last_name)
FROM actor;

SELECT first_name, last_name, concat_ws("-",first_name, last_name)
FROM actor;   -- better way to concatnet the string column


SELECT * FROM actor
WHERE concat(first_name,last_name) = "EDCHASE";

-- substring 

SELECT first_name, substr(first_name,1), substr(first_name,1,3),substr(first_name,-3)
FROM actor;

-- instr to find the posistion of the chracter
select first_name,
instr(first_name, "E"),
char_length(first_name)
from actor;

-- dual table  dummy tbale to check the code
select "hey" , "hello"  from dual;

-- trim to renove space and chracter

select "  hey  ", trim("  hey  ") from dual;

select "  hey  " ,
trim(leading"z" from "zzzzzzheyzzzzz") from dual;  -- leading trim z from starting

select "  hey  " ,
trim(trailing"z" from "zzzzzzheyzzzzz") from dual;  -- trailing trim z from last


select "  hey  " ,
trim(both"z" from "zzzzzzheyzzzzz") from dual;  -- both trim z from start and last

SELECT first_name , replace (first_name,"E","X")
FROM actor;


