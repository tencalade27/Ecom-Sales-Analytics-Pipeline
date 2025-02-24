CREATE TABLE raw.orders_raw (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    order_date TIMESTAMP
);
