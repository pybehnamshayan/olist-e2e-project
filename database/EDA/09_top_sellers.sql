/*
Purpose:
Seller performance analysis.
*/

SELECT TOP 20
    ds.seller_id,
    ds.city,
    ds.state,
    SUM(fs.payment_value) AS total_sales,
    COUNT(DISTINCT fs.order_id) AS total_orders
FROM Fact_Sales fs
JOIN Dim_Seller ds
    ON fs.seller_id = ds.seller_id
GROUP BY
    ds.seller_id,
    ds.city,
    ds.state
ORDER BY total_sales DESC;