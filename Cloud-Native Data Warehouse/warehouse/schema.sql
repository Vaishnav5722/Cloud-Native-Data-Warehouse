CREATE TABLE dim_date (
date_id SERIAL PRIMARY KEY,
full_date DATE,
year INT,
month INT,
day INT
);


CREATE TABLE dim_region (
region_id SERIAL PRIMARY KEY,
country VARCHAR(50),
state VARCHAR(50)
);


CREATE TABLE dim_customer (
customer_id SERIAL PRIMARY KEY,
name VARCHAR(100),
region_id INT REFERENCES dim_region(region_id)
);


CREATE TABLE dim_product (
product_id SERIAL PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50)
);


CREATE TABLE fact_sales (
sales_id SERIAL PRIMARY KEY,
customer_id INT REFERENCES dim_customer(customer_id),
product_id INT REFERENCES dim_product(product_id),
date_id INT REFERENCES dim_date(date_id),
quantity INT,
total_amount NUMERIC
);