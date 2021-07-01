----- Homework 7 -----
SELECT rating, COUNT(*) FROM film GROUP BY rating ORDER BY COUNT(*) DESC;
SELECT replacement_cost, COUNT(*) FROM film GROUP BY replacement_cost HAVING COUNT(*) > 50 ORDER BY COUNT(*) DESC;
SELECT store_id, COUNT(*) FROM customer GROUP BY store_id ORDER BY COUNT(*) DESC;
SELECT country_id, COUNT(*) FROM city GROUP BY country_id ORDER BY COUNT(*) DESC LIMIT 1;