USE sakila;
SELECT film.title, count(film.film_id) AS no_of_times_rented
FROM film
INNER JOIN film_category ON film.film_id = film_category.film_id
INNER JOIN category ON film_category.category_id = category.category_id
INNER JOIN inventory ON film.film_id = inventory.film_id
INNER JOIN rental ON inventory.inventory_id = rental.inventory_id
WHERE category.name = 'HORROR'
GROUP BY film.title
ORDER BY no_of_times_rented DESC
LIMIT 3;