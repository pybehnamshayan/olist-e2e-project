/*
Purpose:
Product category performance analysis.
*/

SELECT
    dp.category,
    SUM(fs.payment_value) AS total_sales,
    SUM(fs.quantity) AS total_quantity
FROM Fact_Sales fs
JOIN Dim_Product dp
    ON fs.product_id = dp.product_id
GROUP BY dp.category
ORDER BY total_sales DESC;