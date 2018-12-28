USE sakila;
SELECT COUNT(film.film_id) AS number_of_documentaries_with_deleted_scenes
FROM film
WHERE film.DESCRIPTION LIKE '%Documentary%' AND film.special_features LIKE '%Deleted Scenes%';