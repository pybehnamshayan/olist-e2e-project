/*
Purpose:
Monthly KPI Dashboard Dataset
*/

SELECT

    dd.year,
    dd.month,
    dd.month_name,

    COUNT(DISTINCT fs.order_id) AS total_orders,

    SUM(fs.payment_value) AS revenue,

    SUM(fs.quantity) AS quantity_sold,

    AVG(fs.payment_value) AS average_order_value,

    COUNT(DISTINCT fs.customer_id) AS active_customers

FROM Fact_Sales fs

JOIN Dim_Date dd
    ON fs.order_date = dd.date

GROUP BY
    dd.year,
    dd.month,
    dd.month_name

ORDER BY
    dd.year,
    dd.month;