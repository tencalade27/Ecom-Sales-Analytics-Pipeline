# E-Commerce Sales Analytics Pipeline
## Overview
This project showcases an Analytics Engineering pipeline using SQL, dbt, and a cloud data warehouse (Snowflake or AWS Redshift). The pipeline processes raw e-commerce sales data and transforms it into an analytics-ready format.
## Tech Stack
+ **Data Warehouse:** Snowflake or AWS Redshift
+ **Orchestration & Transformation:** dbt (Data Build Tool)
+ **SQL:** Used for modeling and transformation
+ **Version Control:** GitHub
## Data Pipeline Workflow
1. **Ingestion:** Load raw data (Orders, Customers, Products) into the cloud data warehouse.
2. **Staging:** Cleanse and standardize data using dbt.
3. **Modeling:** Create fact and dimension tables for analytics.
4. **Testing & Documentation:** Validate data integrity and document models in dbt.
## Data Models
1. Raw Tables _(Source Data)_
    - **orders_raw:** Contains raw transaction data.
    - **customers_raw:** Stores customer details.
    - **products_raw:** Holds product information.
2. Staging Models _(Data Cleansing & Documentation)_
    - **stg_orders:** Cleans order data (fixes timestamps, ensures valid pricing).
    - **stg_customers:** Standardizes customer names and fills missing regions.
    - **stg_products:** Converts category names to lowercase and fills missing stock values.
3. Fact & Dimension Tables _(Analytics Layer)_
    - **fact_sales:** Aggregates sales transactions with total revenue calculations.
    - **dim_customers:** Segments customers based on loyalty.
    - **dim_products:** Categorizes product inventory into stock levels.
## dbt Features Used
+ Sources & Staging Models: Ensures modularity in transformations.
+ Testing: Validates data integirty using _unique_, _'not_null'_, and _foreign key_ relationship tests.
+ Documentation: dbt auto-generates a data catalog for understanding models.
