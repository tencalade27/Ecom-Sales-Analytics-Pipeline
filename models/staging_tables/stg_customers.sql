SELECT 
    customer_id, 
    INITCAP(name) AS name, -- Standardizes text case
    COALESCE(region, 'Unknown') AS region, -- Ensures non-null region values 
    DATE(signup_date) AS signup_date
FROM {{ source('raw', 'customers_raw') }}
WHERE customer_id IS NOT NULL; 
