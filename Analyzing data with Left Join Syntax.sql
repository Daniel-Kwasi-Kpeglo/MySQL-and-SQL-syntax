SELECT
	a.customer_id,
	a.first_name,
	a.last_name,
	b.customer_id,
	b.first_name,
	b.last_name
FROM customer a
LEFT JOIN customer b
ON a.last_name = b.first_name
ORDER BY a.customer_id;