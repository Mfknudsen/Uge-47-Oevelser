insert into actor (first_name, last_name, last_update) values ('Mads', 'Knudsen', current_timestamp );

select * from film_actor;

insert into film_actor (actor_id, film_id) values (201, 2);
insert into film_actor (actor_id, film_id) values (201, 37);
insert into film_actor (actor_id, film_id) values (201, 5);
insert into film_actor (actor_id, film_id) values (201, 12);
insert into film_actor (actor_id, film_id) values (201, 1);

update actor set assignment where (first_name = 'Mads' and last_name = 'Knudsen') value: {expr | default};