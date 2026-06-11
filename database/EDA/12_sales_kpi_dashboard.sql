/*
Purpose:
Executive Sales KPI Dashboard Dataset

Author: Your Name
Project: Sales Data Warehouse
*/

SELECT

    COUNT(DISTINCT order_id) AS total_orders,

    COUNT(DISTINCT customer_id) AS total_customers,

    COUNT(DISTINCT seller_id) AS total_sellers,

    COUNT(DISTINCT product_id) AS total_products,

    SUM(payment_value) AS total_revenue,

    SUM(quantity) AS total_quantity_sold,

    AVG(payment_value) AS avg_order_value,

    AVG(freight_value) AS avg_freight_cost

FROM Fact_Sales;