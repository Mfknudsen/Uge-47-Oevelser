USE sakila;
select * from actor;
select * from actor where last_name = "CAGE";
select * from actor where first_name <> "GAGE" and first_name <> "ZERO";
select * from actor where first_name = "NICK" or first_name = "JOHNNY"  or first_name = "JAMES"  or first_name = "MORGAN"  or first_name = "WHOOPI";
select * from actor where actor_id >= 50 and actor_id <= 150;
select * from actor where first_name like 'C%';
select * from actor order by first_name;
select * from actor order by last_name DESC;
select count(*) from actor;
select count(distinct last_name) from actor;
select * from film where film_id in (select film_id from film_category where category_id = 11);
select title as 'Horror Movies:' from film where film_id in (select film_id from film_category where category_id = 11);
