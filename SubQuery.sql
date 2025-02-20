select * from payment where
amount = (select amount
		from payment where payment_id = 3);
        
-- now get those information from pay table the amount of rental id  =1185 or grater


select * from payment where amount>(SELECT amount FROM payment WHERE rental_id = 1185);
-- Get the infprmation of those payment where the month matches the month of payment id 3
SELECT * FROM payment WHERE month(payment_date) = (select month(payment_date) FROM payment WHERE payment_id = 3);

-- Get those amount where the total number of payments for the amount should be > total payment of 0.99
Select count(amount) from payment where amount group by amount having count(amount)>(SELECT count(amount) from payment WHERE amount = 0.99 group by amount);

-- get each customer id and the total amoount spend where the total amount > the total amount spend by customer id 9 
SELECT customer_id , sum(amount) from payment group by customer_id having sum(amount) > (SELECT sum(amount)  FROM payment Where customer_id = 9);

-- Multi raw query
Select * from payment
