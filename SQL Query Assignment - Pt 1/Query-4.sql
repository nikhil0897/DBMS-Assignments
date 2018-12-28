USE sakila;
SELECT DISTINCT customer.*, actor.first_name AS Actor_First_Name, actor.last_name AS Actor_Last_Name, country.country
FROM customer
INNER JOIN address ON customer.address_id = address.address_id
INNER JOIN city ON address.city_id = city.city_id
INNER JOIN country ON city.country_id = country.country_id
INNER JOIN rental ON customer.customer_id = rental.customer_id  
INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
INNER JOIN film ON inventory.film_id = film.film_id
INNER JOIN film_actor ON film.film_id = film_actor.film_id
INNER JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE actor.first_name = 'NICK' AND actor.last_name = 'WAHLBERG' AND country.country = 'Canada';