use videoteka;

-- 1
SELECT extract(YEAR FROM p.purchase_date) AS year, extract(MONTH FROM p.purchase_date) AS month, SUM(cost) total_cost FROM Disk
JOIN purchase p ON p.disk_id = id
GROUP BY extract(YEAR FROM p.purchase_date), extract(MONTH FROM p.purchase_date)
ORDER BY year, month, total_cost;

-- 2
SELECT social_status, COUNT(*) as buyers_by_social_status
FROM Buyer
GROUP BY social_status
ORDER BY buyers_by_social_status DESC
LIMIT 1;


-- 3
SELECT title
FROM film
WHERE MONTH(CURRENT_DATE()) = MONTH(release_date)
ORDER BY release_date
LIMIT 1;

-- 4

SELECT country, count(*) AS number_of_oscars
FROM film
	JOIN film_actor ON film_actor.film_id = film.id
    JOIN actor ON actor.id = film_actor.actor_id
WHERE actor.hasOscar = 1
GROUP BY country
ORDER BY number_of_oscars DESC
LIMIT 1;

-- 5

SELECT theme, COUNT(*) AS number_of_purchases
FROM film
	JOIN disk ON disk.film_id = film.id
    JOIN buyer ON buyer.disk_id = disk.id
WHERE buyer.age <= 21
GROUP BY theme
ORDER BY number_of_purchases
LIMIT 1;
