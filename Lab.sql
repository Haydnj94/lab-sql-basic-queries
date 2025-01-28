# 1
show tables;

# 2
select * from actor, film, customer;

# 3
# 3.1
select title
from film;

# 3.2
select name as language
from language;

# 3.3
select first_name
from staff;

# 4
select distinct release_year
from film;

# 5.1
select count(store_id) as number_of_stores
from store
;

# 5.2
select count(staff_id) as number_of_staff
from staff
;

# 5.3
select count(*) as films_available_for_rent
from inventory;

select count(rental_id)
from rental;

# 5.4 
select distinct last_name
from actor;

# 6
select film_id, length
from film
order by length desc
limit 10;

# 7.1
select actor_id, first_name
from actor
where first_name = 'SCARLETT';

# 7.2
select title, length
from film
where title LIKE '%ARMAGEDDON%' and length > 100;


select * from film;

# 7.3
select count(film_id) as film_wih_bts
from film
where special_features like '%Behind the Scenes%'
;
