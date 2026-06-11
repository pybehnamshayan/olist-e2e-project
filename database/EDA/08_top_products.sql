/*
Purpose:
Top-selling products.
*/

SELECT TOP 20
    dp.product_id,
    dp.category,
    SUM(fs.quantity) AS total_quantity,
    SUM(fs.payment_value) AS total_sales
FROM Fact_Sales fs
JOIN Dim_Product dp
    ON fs.product_id = dp.product_id
GROUP BY
    dp.product_id,
    dp.category
ORDER BY total_quantity DESC;