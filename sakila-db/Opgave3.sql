select * from category;
select * from film left join film_category on film.film_id = film_category.film_id where category_id = "11";