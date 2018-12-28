USE sakila;
SELECT customer.first_name, customer.last_name, COUNT(film.film_id) AS number_of_R_rated_movies_rented
FROM customer
INNER JOIN rental ON customer.customer_id = rental.customer_id
INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
INNER JOIN film ON inventory.film_id = film.film_id
WHERE film.rating = 'R' AND customer.first_name = 'SUSAN' AND customer.last_name = 'WILSON';