----- HOMEWORK 12 -----
SELECT COUNT(*) FROM film WHERE length > (SELECT AVG(length) FROM film);
SELECT COUNT(*) FROM film WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);
SELECT * FROM film WHERE rental_rate = (SELECT MIN(rental_rate) FROM film) AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);

SELECT virtual.customer_id AS "Müşteri ID", CONCAT(customer.first_name, ' ', customer.last_name) AS "Müşteri Ad Soyad", virtual.count AS "Alışveriş Sayısı" 
FROM(SELECT customer_id, COUNT(*) AS "count" 
	 FROM payment 
	 GROUP BY customer_id) AS "virtual" 
JOIN customer ON customer.customer_id=virtual.customer_id
ORDER BY "Alışveriş Sayısı" DESC;