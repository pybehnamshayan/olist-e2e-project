/*
Purpose:
Identify highest-value customers.
*/

SELECT TOP 20
    dc.customer_id,
    dc.city,
    dc.state,
    SUM(fs.payment_value) AS total_spent,
    COUNT(DISTINCT fs.order_id) AS total_orders
FROM Fact_Sales fs
JOIN Dim_Customer dc
    ON fs.customer_id = dc.customer_id
GROUP BY
    dc.customer_id,
    dc.city,
    dc.state
ORDER BY total_spent DESC;