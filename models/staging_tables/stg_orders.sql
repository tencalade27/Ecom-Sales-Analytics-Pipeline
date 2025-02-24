-- Ensures valid data types

SELECT 
    order_id, 
    customer_id, 
    product_id, 
    quantity, 
    CAST(price AS DECIMAL(10,2)) AS price, 
    DATE(order_date) AS order_date -- Converts timestamps into date format
FROM {{ source('raw', 'orders_raw') }}
WHERE order_id IS NOT NULL; -- Filters out bad records
