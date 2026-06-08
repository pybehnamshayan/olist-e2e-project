# Database Architecture - Olist Project

## Overview

This document describes the architecture of the Olist data system, including the operational database (OlistDB) and the analytical data warehouse (OlistDW). The architecture follows a layered approach to separate raw data storage from analytical processing.

---

## 1. Data Sources

The project is based on the Olist Brazilian E-Commerce dataset. The raw data was originally provided in CSV format and includes the following datasets:

### Source Tables

* Customers
* Geolocation
* Orders
* Order Items
* Order Payments
* Order Reviews
* Products
* Sellers
* Product Category Name Translation (category_name)

---

## 2. Operational Database (OlistDB)

The first layer of the architecture is the operational database (OlistDB), which stores raw data imported directly from CSV files with minimal transformation.

### Tables in OlistDB

* Customers
* Geolocation
* Orders
* Order_Payments
* Order_Reviews
* Products
* Sellers
* Category_Name

### Purpose of OlistDB

* Store raw transactional data
* Preserve original dataset structure
* Enable validation and data quality checks
* Serve as staging layer for ETL process

---

## 3. Data Warehouse (OlistDW)

The second layer is the analytical database (OlistDW), designed using a Star Schema model for reporting and analytics.

Data is extracted from OlistDB, transformed, and loaded into dimensional and fact tables.

---

## 4. Star Schema Model

### Fact Tables

#### FactSales

Contains transactional sales metrics such as:

* Order value
* Freight value
* Quantity of items sold

#### FactOrders

Contains order-level analytical information such as:

* Order count
* Delivery time
* Order status metrics

---

### Dimension Tables

#### DimCustomer

* Customer ID
* Location information
* Customer demographics (if available)

#### DimProduct

* Product ID
* Category information
* Product attributes (weight, dimensions, etc.)

#### DimSeller

* Seller ID
* Seller location
* Seller performance attributes

#### DimDate

* Date key
* Year, month, day
* Time hierarchy for analysis

#### DimPayment

* Payment type
* Number of installments
* Payment value

---

## 5. ETL Data Flow

The data pipeline follows a structured ETL process:

```
CSV Files
   ↓
OlistDB (Operational Layer)
   ↓
Data Cleaning & Transformation
   ↓
OlistDW (Star Schema)
   ↓
Power BI Dashboard
   ↓
Machine Learning Models
```

---

## 6. Key Design Decisions

### 1. Separation of Layers

Operational and analytical layers are separated to improve performance and maintainability.

### 2. Star Schema Selection

Star schema was chosen because:

* It simplifies analytical queries
* Improves BI tool performance
* Reduces join complexity
* Enhances readability for business users

### 3. Use of Category Translation Table

The `category_name` table is used to standardize product categories into English for consistent reporting.

---

## 7. Business Use Cases

This architecture supports the following analytics:

* Sales performance analysis
* Customer behavior analysis
* Product category analysis
* Seller performance evaluation
* Delivery time analysis
* Revenue trend forecasting

---

## 8. Future Improvements

* Implement incremental ETL pipelines
* Add Slowly Changing Dimensions (SCD Type 2)
* Introduce data quality monitoring rules
* Automate ETL using Python or Airflow
* Migrate to cloud data warehouse (e.g., Azure / AWS)

---

## Conclusion

This architecture provides a scalable and structured foundation for analytics and machine learning. The separation between operational and analytical layers ensures data integrity, performance optimization, and flexibility for future enhancements.
