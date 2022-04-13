-- Question 1:
select customer.first_name, customer.last_name, customer.email, city, district
from customer
full join address
on customer.address_id = address.address_id
full join city
on address.city_id = city.city_id
full join country
on city.country_id = country.country_id
where district = 'Texas';

--Question 2:
select customer.customer_id, customer.first_name, customer.last_name, amount
from customer
full join payment
on customer.customer_id = payment.customer_id
where amount > 6.99;


--Question 3:
select store_id, first_name, last_name
from customer
where customer_id in (
	SELECT customer_id
	from payment
	group by customer_id
	having sum(amount) > 175.00
	order by sum(amount) desc
)
group by store_id, first_name, last_name;


-- Question 4:
select customer.first_name, customer.last_name, customer.email, city, country
from customer
full join address
on customer.address_id = address.address_id
full join city
on address.city_id = city.city_id
full join country
on city.country_id = country.country_id
where country = 'Nepal';

--Question 5:
select count(payment_id), staff.staff_id, staff.first_name, staff.last_name
from staff
full join payment
on staff.staff_id = payment.staff_id
group by staff.staff_id
order by count(payment_id) desc;

--Question 6:
select all *
from film;

select rating, count(rating)
from film
group by rating
order by count(rating)desc;

-- Question 7:
select customer_id, first_name, last_name
from customer
where customer_id in (
	select customer_id
	from payment
	where amount > 6.99
);

--Question 8:
select count(amount)
from payment
where amount = 0.00;
