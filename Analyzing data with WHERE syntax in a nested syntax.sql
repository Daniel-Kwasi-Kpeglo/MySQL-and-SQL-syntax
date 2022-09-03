SELECT * FROM actor
WHERE actor_id in
	(SELECT actor_id FROM film_actor
	WHERE film_id = 
    (SELECT film_id FROM film
    WHERE title = 'Ace Goldfinger')
    );