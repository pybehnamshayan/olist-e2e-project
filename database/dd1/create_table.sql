--Part 1: Create new database for Star Schema
CREATE DATABASE OlistDW;
GO
USE OlistDW;
GO


-- Create Dimentions Table
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



--Create Fact Tables (Here we join the ID columns as Foreign Key to the Dim tables to maintain data integrity)

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





-- Check data completeness
SELECT COUNT(*) FROM Fact_Sales;

-- Check missing values
SELECT * FROM Fact_Sales WHERE payment_value IS NULL;