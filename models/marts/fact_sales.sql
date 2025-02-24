-- Aggregates order-level sales data

SELECT 
    o.order_id, 
    o.order_date, 
    o.customer_id, 
    p.product_id, 
    p.category, 
    o.quantity, 
    o.price, 
    (o.quantity * o.price) AS total_sales
FROM {{ ref('stg_orders') }} o
JOIN {{ ref('stg_products') }} p 
    ON o.product_id = p.product_id;
