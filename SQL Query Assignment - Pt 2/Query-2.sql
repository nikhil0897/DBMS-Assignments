USE sakila;
SELECT staff.first_name, staff.last_name, category.name AS genre, COUNT(DISTINCT film.film_id) AS total
FROM film
INNER JOIN film_category ON film.film_id = film_category.film_id
INNER JOIN category ON film_category.category_id = category.category_id
INNER JOIN inventory ON film.film_id = inventory.film_id
INNER JOIN rental ON inventory.inventory_id = rental.inventory_id
INNER JOIN staff ON rental.staff_id = staff.staff_id
WHERE category.name = 'Sci-Fi' AND staff.first_name = 'Jon' AND staff.last_name = 'Stephens';