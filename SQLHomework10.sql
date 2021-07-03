----- Homework 10 -----
SELECT city.city, country.country FROM city LEFT JOIN country ON city.country_id=country.country_id;
SELECT customer.first_name, customer.last_name, payment.payment_id FROM payment RIGHT JOIN customer ON payment.customer_id=customer.customer_id;
SELECT customer.first_name, customer.last_name, rental.rental_id FROM customer FULL JOIN rental ON rental.customer_id = customer.customer_id;