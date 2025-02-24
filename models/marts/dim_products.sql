-- Product dimension table

SELECT 
    product_id, 
    category, 
    price, 
    stock, 
    CASE 
        WHEN stock > 100 THEN 'High Stock'
        WHEN stock BETWEEN 10 AND 100 THEN 'Medium Stock'
        ELSE 'Low Stock'
    END AS stock_status
FROM {{ ref('stg_products') }};
