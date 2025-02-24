-- Segments customers based on signup date

SELECT 
    customer_id, 
    name, 
    region, 
    CASE 
        WHEN signup_date >= CURRENT_DATE - INTERVAL '1 year' THEN 'New'
        ELSE 'Loyal'
    END AS customer_segment
FROM {{ ref('stg_customers') }};
