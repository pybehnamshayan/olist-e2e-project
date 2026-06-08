




-- Add surrogate key to improve data warehouse design (best practice for analytical modeling)
ALTER TABLE Dim_Customer
ADD customer_sk INT IDENTITY(1,1);




-- Add surrogate key to separate business key from analytical key (improves flexibility and performance)
ALTER TABLE Dim_Product
ADD product_sk INT IDENTITY(1,1);



-- Add surrogate key for consistent dimensional modeling and better join performance in BI tools
ALTER TABLE Dim_Seller
ADD seller_sk INT IDENTITY(1,1);




-- Improve numeric accuracy for analytical calculations (FLOAT is imprecise for BI reporting)
ALTER TABLE Dim_Product
ALTER COLUMN weight DECIMAL(10,2);



-- Enrich date dimension to support advanced time-based analytics in BI dashboards
ALTER TABLE Dim_Date
ADD day INT,
    month_name VARCHAR(20),
    day_name VARCHAR(20);


	-- Populate enhanced date attributes for better reporting flexibility
UPDATE Dim_Date
SET 
    day = DAY(date),
    month_name = DATENAME(MONTH, date),
    day_name = DATENAME(WEEKDAY, date);



	-- Rebuilding Fact table to ensure correct ETL logic and proper multi-table joins
TRUNCATE TABLE Fact_Sales;




-- Populate Fact_Sales using proper ETL logic with joins between Orders, Order_Items, and Payments
-- This ensures a correct star schema fact table with accurate business metrics

INSERT INTO Fact_Sales (
    order_id,
    customer_id,
    product_id,
    seller_id,
    order_date,
    payment_value,
    freight_value,
    quantity
)
SELECT 
    o.order_id,
    o.customer_id,
    oi.product_id,
    oi.seller_id,
    CAST(o.order_purchase_timestamp AS DATE) AS order_date,
    p.payment_value,
    oi.freight_value,
    oi.order_item_id AS quantity
FROM olistDB.dbo.orders o
JOIN olistDB.dbo.order_items oi
    ON o.order_id = oi.order_id
JOIN olistDB.dbo.order_payments p
    ON o.order_id = p.order_id
WHERE o.order_purchase_timestamp IS NOT NULL;



-- Prevent duplicate inflation in fact table by aggregating payment data at order level
WITH PaymentAgg AS (
    SELECT 
        order_id,
        SUM(payment_value) AS payment_value
    FROM olistDB.dbo.order_payments
    GROUP BY order_id
)

INSERT INTO Fact_Sales (
    order_id,
    customer_id,
    product_id,
    seller_id,
    order_date,
    payment_value,
    freight_value,
    quantity
)
SELECT 
    o.order_id,
    o.customer_id,
    oi.product_id,
    oi.seller_id,
    CAST(o.order_purchase_timestamp AS DATE),
    pa.payment_value,
    oi.freight_value,
    oi.order_item_id
FROM olistDB.dbo.orders o
JOIN olistDB.dbo.order_items oi
    ON o.order_id = oi.order_id
JOIN PaymentAgg pa
    ON o.order_id = pa.order_id;



	-- Validate fact table after ETL to ensure data integrity and correct row population
SELECT 
    COUNT(*) AS total_rows,
    COUNT(DISTINCT order_id) AS unique_orders
FROM Fact_Sales;