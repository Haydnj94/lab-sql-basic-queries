use sakila;

select * from actor;

select title, description 
from film;

select first_name, last_name
from actor;

select distinct first_name
from actor;

select sum(amount)
from payment;

select title, rating
from film
order by rating, title desc;

select film_id, count(actor_id) as number_of_actors
from film_actor
group by film_id
order by number_of_actors desc;

select customer_id, sum(amount) as total_spent
from payment
group by customer_id
order by total_spent desc;


select date_format(return_date, '%j') - date_format(rental_date, '%j') as delay
from rental;

select date_format(return_date, '%W')
from rental;

select country_id, count(city_id) as total_cities
from city
group by country_id
order by country_id;

select first_name, last_name
from actor
where first_name = 'John';

select customer_id, sum(amount) as total_spent
from payment
where customer_id between 100 and 200
group by customer_id
order by customer_id;

select rating, avg(length) as average_rating_length
from film
where rating in ('R','PG')
group by rating;

select customer_id, sum(amount) as total_spent
from payment
where customer_id between 100 and 200
group by customer_id
having total_spent >100
order by total_spent desc
limit 5;

select country_id, count(city_id) as total_cities
from city
group by country_id
having total_cities > 10;

select title, description
from film
order by length desc
limit 5
;

select title, description,
	case 
		when length > 120 then 'long'
		when length > 60 then 'medium'
		else 'short'
	end as length_type
from film
order by length_type desc
;

select format(10.2453, 2);

select customer_id, format(sum(amount),2) as total_spent
from payment
where customer_id between 100 and 200
group by customer_id
having total_spent >100
order by total_spent desc
;

select first_name, last_name
from actor
where first_name like "_A_T%"