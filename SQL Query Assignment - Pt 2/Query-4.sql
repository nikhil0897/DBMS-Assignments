USE sakila;
SELECT customer.first_name, customer.last_name, category.NAME AS genre, COUNT(film.film_id) AS no_of_times_rented 
FROM customer
INNER JOIN rental ON customer.customer_id = rental.customer_id
INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
INNER JOIN film ON inventory.film_id = film.film_id
INNER JOIN film_category ON film.film_id = film_category.film_id
INNER JOIN category ON film_category.category_id = category.category_id
WHERE customer.first_name = 'PATRICIA' AND customer.last_name = 'JOHNSON'
group by category.category_id
ORDER BY no_of_times_rented DESC
LIMIT 3;