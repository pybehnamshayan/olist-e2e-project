/*
Purpose:
Customer segmentation using RFM metrics.

Author: Your Name
Project: Sales Data Warehouse
*/

SELECT
    dc.customer_id,

    COUNT(DISTINCT fs.order_id) AS frequency,

    SUM(fs.payment_value) AS monetary,

    MAX(dd.date) AS last_purchase_date,

    DATEDIFF(
        DAY,
        MAX(dd.date),
        (SELECT MAX(date) FROM Dim_Date)
    ) AS recency_days

FROM Fact_Sales fs

JOIN Dim_Customer dc
    ON fs.customer_id = dc.customer_id

JOIN Dim_Date dd
    ON fs.order_date = dd.date

GROUP BY
    dc.customer_id

ORDER BY
    monetary DESC;