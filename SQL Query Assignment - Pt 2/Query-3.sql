USE sakila;
SELECT category.NAME AS genre, SUM(payment.amount) AS total_sales
FROM payment
INNER JOIN rental ON payment.rental_id = rental.rental_id
INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
INNER JOIN film ON inventory.film_id = film.film_id
INNER JOIN film_category ON film.film_id = film_category.film_id
INNER JOIN category ON film_category.category_id = category.category_id
WHERE category.name = 'Animation'
ORDER BY payment.payment_id;