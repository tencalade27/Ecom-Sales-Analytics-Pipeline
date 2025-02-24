SELECT category, SUM(total_sales) AS revenue
FROM fact_sales
GROUP BY category
ORDER BY revenue DESC
LIMIT 5;
