/*
Purpose:
Monthly revenue trend analysis.
*/

SELECT
    dd.year,
    dd.month,
    dd.month_name,
    SUM(fs.payment_value) AS total_sales,
    SUM(fs.quantity) AS total_quantity
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