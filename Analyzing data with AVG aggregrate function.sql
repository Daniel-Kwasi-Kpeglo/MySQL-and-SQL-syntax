SELECT AVG(a) FROM
	(SELECT 
		customer_id,
        SUM(amount) a
	FROM payment
    GROUP BY customer_id) AS totals;