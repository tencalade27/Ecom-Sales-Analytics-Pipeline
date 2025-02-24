SELECT customer_segment, COUNT(customer_id) AS total_customers
FROM dim_customers
GROUP BY customer_segment;
