/*
Purpose:
Validate warehouse data quality.
*/

SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT order_id) AS distinct_orders
FROM Fact_Sales;

SELECT
    SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS customer_nulls,
    SUM(CASE WHEN product_id IS NULL THEN 1 ELSE 0 END) AS product_nulls,
    SUM(CASE WHEN seller_id IS NULL THEN 1 ELSE 0 END) AS seller_nulls
FROM Fact_Sales;