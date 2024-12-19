-- /*ASSIGNMENT 3 --

-- QUESTION 1
-- 1.	One of our investors is interested in the films we carry and how many actors are listed for each film title can you pull a list of all titles, and figure out how many actors are associated with each title. (hint use left join, decide which table should be your left table) 
 
 select film.title, count(film_actor.actor_id) as NumberOfActors
 from film
 left join film_actor on film.film_id = film_actor.film_id
 group by title;

-- QUESTION 2
 -- 2.	Using LEFT JOIN, INNER JOIN AND RIGHT JOIN, pull out the following records, compare your answer across the three tables (i.e LEFT JOIN, INNER JOIN AND RIGHT JOIN) and make a brief summary of your observations. The information’s are:
-- •	Actor first name
-- •	Actor last name
-- •	Actor award first name
-- •	Actor award last name
-- •	Awards
-- Ensure to use your ALIAS where necessary

-- LEFT JOIN
select
	actor.first_name,
    actor.last_name,
    actor_award.first_name,
    actor_award.last_name,
    actor_award.awards
from actor
left join 
	actor_award
on actor.actor_id = actor_award.actor_id;

-- INNER JOIN
select
	A.first_name,
    A.last_name,
    W.first_name,
    W.last_name,
    W.awards
from mavenmovies.actor AS A
right join 
	mavenmovies.actor_award AS W 
on A.actor_id = W.actor_id;

-- RIGHT JOIN
select
	A.first_name,
    A.last_name,
    W.first_name,
    W.last_name,
    W.awards
from mavenmovies.actor_award AS W
right join 
	mavenmovies.actor AS A
on W.actor_id = A.actor_id;

-- QUESTION 3
-- 3. The business wants you to pull out records of customer id with less than 15 rental all-time
select
	customer_id,
    rental_id
from payment
where rental_id < 15 
order by customer_id;

-- QUESTIO
  -- 4. Can you help pull out a count of film, along with the average, min, and max rental rating, group by replacement cost

select 
    count(film.film_id) as Film_idcount,
     avg(film.rental_rate) as averagerental_rate,
      min(film.rental_rate) as minrental_rate,
       max(film.rental_rate) as maxrental_rate
from film
group by replacement_cost;

   -- 5.	We need information on rating, rental duration, replacement cost and count of film id 
select
	film.rating,
    film.rental_duration,
    film.replacement_cost,
    count(film.film_id) as countoffilm
from film
group by film_id;