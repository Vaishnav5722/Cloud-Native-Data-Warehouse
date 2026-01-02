-- Total revenue by product category
SELECT p.category, SUM(f.total_amount) AS revenue
FROM fact_sales f
JOIN dim_product p ON f.product_id = p.product_id
GROUP BY p.category;


-- Monthly sales trend (partition‑friendly)
SELECT d.year, d.month, SUM(f.total_amount) AS revenue
FROM fact_sales f
JOIN dim_date d ON f.date_id = d.date_id
GROUP BY d.year, d.month
ORDER BY d.year, d.month;


-- Region‑wise sales (snowflake benefit)
SELECT r.country, SUM(f.total_amount) AS revenue
FROM fact_sales f
JOIN dim_customer c ON f.customer_id = c.customer_id
JOIN dim_region r ON c.region_id = r.region_id
GROUP BY r.country;