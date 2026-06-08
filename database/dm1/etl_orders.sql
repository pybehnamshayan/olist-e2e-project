--Part 1: Create new database for Star Schema
CREATE DATABASE OlistDW;
GO
USE OlistDW;
GO


-- part 2 : Create Dimentions Table
-- Dim Customer
CREATE TABLE Dim_Customer (
    customer_id VARCHAR(50) PRIMARY KEY,
    city VARCHAR(100),
    state VARCHAR(10)
);

-- Dim Product
CREATE TABLE Dim_Product (
    product_id VARCHAR(50) PRIMARY KEY,
    category VARCHAR(100),
    weight FLOAT
);

-- Dim Seller
CREATE TABLE Dim_Seller (
    seller_id VARCHAR(50) PRIMARY KEY,
    city VARCHAR(100),
    state VARCHAR(10)
);

-- Dim Date
CREATE TABLE Dim_Date (
    date DATE PRIMARY KEY,
    year INT,
    month INT,
    quarter INT,
    week INT
);



--part 3 : Create Fact Tables (Here we join the ID columns as Foreign Key to the Dim tables to maintain data integrity)

CREATE TABLE Fact_Sales (
    sales_key INT IDENTITY(1,1) PRIMARY KEY, -- کلید اصلی خود جدول Fact
    order_id VARCHAR(50),
    customer_id VARCHAR(50),
    product_id VARCHAR(50),
    seller_id VARCHAR(50),
    order_date DATE, -- برای اتصال به Dim_Date
    payment_value DECIMAL(10,2),
    freight_value DECIMAL(10,2),
    quantity INT,

    -- تعریف روابط (Foreign Keys)
    FOREIGN KEY (customer_id) REFERENCES Dim_Customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES Dim_Product(product_id),
    FOREIGN KEY (seller_id) REFERENCES Dim_Seller(seller_id),
    FOREIGN KEY (order_date) REFERENCES Dim_Date(date)
);


--part 4: Insert data from olistDB to Star Schema



INSERT INTO Dim_Customer (customer_id, city, state)
SELECT DISTINCT
    customer_id,
    customer_city,
    customer_state
FROM olistDB.dbo.Customers; 




INSERT INTO Dim_Seller (seller_id, city, state)
SELECT DISTINCT
    seller_id,
    seller_city,
    seller_state
FROM OlistDB.dbo.sellers;



INSERT INTO Dim_Product (product_id, category, weight)
SELECT DISTINCT
    product_id,
    product_category_name,
    product_weight_g
FROM olistDB.dbo.products;




INSERT INTO Dim_Date (date, year, month, quarter, week)
SELECT DISTINCT
    CAST(order_purchase_timestamp AS DATE) AS date,
    YEAR(order_purchase_timestamp) AS year,
    MONTH(order_purchase_timestamp) AS month,
    DATEPART(QUARTER, order_purchase_timestamp) AS quarter,
    DATEPART(WEEK, order_purchase_timestamp) AS week
FROM olistDB.dbo.orders
WHERE order_purchase_timestamp IS NOT NULL;