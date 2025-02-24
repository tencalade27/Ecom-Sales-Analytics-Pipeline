SELECT 
    product_id, 
    LOWER(category) AS category, -- Ensures categories are lowercase for formatting consistency
    CAST(price AS DECIMAL(10,2)) AS price, 
    COALESCE(stock, 0) AS stock -- Handles missing stock values
FROM {{ source('raw', 'products_raw') }}
WHERE product_id IS NOT NULL;
