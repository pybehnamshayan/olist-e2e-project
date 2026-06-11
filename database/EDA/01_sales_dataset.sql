/*
Purpose:
Create a denormalized dataset for exploratory data analysis.

Author: Your Name
Project: Sales Data Warehouse
*/

SELECT
    fs.sales_key,
    fs.order_id,
    fs.quantity,
    fs.payment_value,
    fs.freight_value,

    dc.customer_id,
    dc.city AS customer_city,
    dc.state AS customer_state,

    ds.seller_id,
    ds.city AS seller_city,
    ds.state AS seller_state,

    dp.product_id,
    dp.category,
    dp.weight,

    dd.date,
    dd.year,
    dd.quarter,
    dd.month,
    dd.month_name,
    dd.week,
    dd.day_name

FROM Fact_Sales fs
LEFT JOIN Dim_Customer dc
    ON fs.customer_id = dc.customer_id
LEFT JOIN Dim_Product dp
    ON fs.product_id = dp.product_id
LEFT JOIN Dim_Seller ds
    ON fs.seller_id = ds.seller_id
LEFT JOIN Dim_Date dd
    ON fs.order_date = dd.date;