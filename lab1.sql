-- Use the sakila database to do the following tasks:

-- Display all available tables in the Sakila database.
use sakila;
show full tables;

-- Retrieve all the data from the tables actor, film and customer.
select * from actor;
select * from film;
select * from customer;

-- Retrieve the following columns from their respective tables:
 -- 3.1 Titles of all films from the film table
SELECT titles , films
FROM film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT name as "LANGUAGE"
FROM language;


-- 3.3 List of first names of all employees from the staff table
SELECT first_name
FROM staff;

-- Retrieve unique release years.

select distinct release_year from film;


/* Counting records for database insights:
5.1 Determine the number of stores that the company has. */
select count(1)
from store;

-- 5.2 Determine the number of employees that the company has.

select count(1) as "number of employees"
from staff;

 -- 5.3 Determine how many films are available for rent and how many have been rented.
select * from rental;

-- 5.4 Determine the number of distinct last names of the actors in the database.
select count(distinct last_name)
from actor;

-- 5.4 Retrieve the 10 longest films.
select * from film
order by length desc
limit 10;

-- Use filtering techniques in order to:

-- 7.1 Retrieve all actors with the first name "SCARLETT".

SELECT *
from actor
where first_name = "SCARLETT";


/* BONUS:

7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.

Hint: use LIKE operator. More information here.
7.3 Determine the number of films that include Behind the Scenes content */


