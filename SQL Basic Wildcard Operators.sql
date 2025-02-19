show databases;


use sakila;

show tables;

describe actor;

SELECT * FROM actor;

SELECT actor_id, first_name, ACTOR_ID*100 FROM actor;

SELECT *  FROM actor;

-- Select * from table; => All Columns Selection
-- Where clause

SELECT * FROM actor
WHERE actor_id <> 2;

-- Operators => between, in , and like operator
-- between => range of values

SELECT *
FROM actor
WHERE actor_id BETWEEN 1  AND 5;

SELECT * 
FROM actor
WHERE actor_id IN (2,5);

SELECT * 
from actor
WHERE first_name IN ("NICK","ED");


-- like Operator => pattern Dhundta handler
-- wildcard chracter => % => zero or motr chracter
-- _ => only 1 chracter

SELECT * 
FROM actor
WHERE first_name LIKE "%SA%";

SELECT * 
FROM actor 
WHERE first_name LIKE "E%";

SELECT * 
FROM actor 
WHERE first_name LIKE "E_";

SELECT * 
FROM actor 
WHERE first_name LIKE "_A%"; -- A chracter at second posistion

SELECT * 
FROM actor 
WHERE first_name LIKE "____";  -- it gives starting fout chracter 

SELECT * 
FROM actor 
WHERE first_name LIKE "%I__"; -- it gives letter I at last 3rd

SELECT * 
FROM actor 
WHERE first_name LIKE "_%E%_";  -- it gives later E at middle


SELECT *
FROM actor
WHERE first_name LIKE "_R___"; -- MiniMUM foru leter with last third is R

SELECT * 
FROM actor 
WHERE first_name LIKE "_%EE%_"; -- Where EE is present

SELECT * 
FROM actor
WHERE first_name LIKE "_H%Z_" -- Where H is at Second and Z is at second last
