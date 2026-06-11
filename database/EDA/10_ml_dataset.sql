/*
Purpose:
Machine Learning feature dataset.
*/

SELECT
    dd.year,
    dd.month,
    dd.quarter,

    dc.state AS customer_state,

    ds.state AS seller_state,

    dp.category,
    dp.weight,

    fs.quantity,
    fs.freight_value,

    fs.payment_value AS target_sales

FROM Fact_Sales fs
JOIN Dim_Date dd
    ON fs.order_date = dd.date
JOIN Dim_Customer dc
    ON fs.customer_id = dc.customer_id
JOIN Dim_Product dp
    ON fs.product_id = dp.product_id
JOIN Dim_Seller ds
    ON fs.seller_id = ds.seller_id;