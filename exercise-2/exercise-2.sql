-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts
SELECT city.city, SUM(amount)
FROM rental
INNER JOIN payment
ON rental.rental_id = payment.rental_id
INNER JOIN customer
ON payment.customer_id = customer.customer_id
INNER JOIN address
ON customer.address_id = address.address_id
INNER JOIN city
ON address.city_id = city.city_id
GROUP BY city.city
ORDER BY sum DESC
LIMIT 10;
