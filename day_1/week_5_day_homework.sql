-- Query 1, Last name wahlburg
SELECT ALL *
FROM actor;

SELECT COUNT(last_name)
from actor
where last_name like 'Wahlburg';
-- answer: 2

-- Query 2, Payments between 2.99-5.99
SELECT ALL *
FROM payment;

select count(amount)
from payment
where amount between 3.99 and 5.99;
-- Answer: 5,607

-- Query 3, what film has largest inventory
select all *
from inventory;

select count(film_id), film_id
from inventory
group by film_id
order by count(film_id)desc;
-- 8

-- Query 4: Last name William count
select all *
from customer;

select count(last_name)
from customer
where last_name like 'william';
--Answer: 0

-- Query 5: Employee of the month
select all * 
from rental;

SELECT staff_id, count(rental_id)
from rental
group by staff_id
order by count(rental_id)desc;
-- Answer staff_id 1: 8040



-- Query 6: Different district names
select all *
from address;

select count(distinct(district))
from address;
-- Answer: 378


-- Query 7: What film has most actors
select all *
from film_actor;

select film_id, count(actor_id)
from film_actor
group by film_id
order by count(actor_id) desc;
--Answer: film 508 - 15

-- Query 8: Customers with "es" at store 1
select all *
from customer;

select store_id, count(last_name)
from customer
where last_name like '_%es'
group by store_id
order by store_id;
-- Answer: 13

-- Query 9: How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
select all *
from payment;

select distinct amount, count(payment_id)
from payment
where customer_id between 380 and 430
group by amount
having count(amount) > 250;
-- Answer: 3


-- Query 10: How many catagories and which has most
select all *
from film;

select rating, count(rating)
from film
group by rating
order by count(rating)desc;
-- Answer: 5 rating, PG-13 has 223
