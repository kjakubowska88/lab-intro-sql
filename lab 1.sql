-- 1. Review the tables in the database.
-- 2. Explore tables by selecting all columns from each table or using the in built review features for your client.
-- 3. Select one column from a table. Get film titles.
-- 4. Select one column from a table and alias it. Get unique list of film languages under the alias language. Note that we are not asking you to obtain the language per each film, but this is a good time to think about how you might get that information in the future.
-- 5. Using the select statements and reviewing how many records are returned, can you find out how many stores and staff does the company have? Can you return a list of employee first names only?
-- 6. Bonus: How many unique days did customers rent movies in this dataset?

show databases;
use sakila;
show tables;

-- 1. -- -- 2. --
select * from actor
LIMIT 20;
select * from film
LIMIT 20;
select * from language;
select * from customer
LIMIT 30;
-- 3 --
select title from film;
-- 4--
select Distinct(Name) as Language from language;
-- 5--
select Count(*) from store;
select count(*) from staff;

select first_name from staff;
-- 6.--
select * from rental;
select COUNT(rental_date) from rental;