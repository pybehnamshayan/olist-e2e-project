/*
Purpose:
Geographical sales analysis.
*/

SELECT
    dc.state,
    COUNT(DISTINCT dc.customer_id) AS customers,
    COUNT(DISTINCT fs.order_id) AS orders_count,
    SUM(fs.payment_value) AS total_sales
FROM Fact_Sales fs
JOIN Dim_Customer dc
    ON fs.customer_id = dc.customer_id
GROUP BY dc.state
ORDER BY total_sales DESC;