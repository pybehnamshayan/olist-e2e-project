/*
Purpose:
Quarterly revenue analysis.
*/

SELECT
    dd.year,
    dd.quarter,
    SUM(fs.payment_value) AS total_sales,
    SUM(fs.quantity) AS total_quantity
FROM Fact_Sales fs
JOIN Dim_Date dd
    ON fs.order_date = dd.date
GROUP BY
    dd.year,
    dd.quarter
ORDER BY
    dd.year,
    dd.quarter;