USE sakila;
SELECT film.*, category.name AS category
FROM film
INNER JOIN film_category ON film.film_id = film_category.film_id
INNER JOIN category ON film_category.category_id = category.category_id
WHERE film.rating = 'PG-13' AND category.name = 'Comedy';