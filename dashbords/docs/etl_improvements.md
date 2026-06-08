## Metadata
- Project: Olist End-to-End Analytics
- Layer: Data Warehouse / ETL / EDA
- Tools: SQL Server, Python, Power BI




# ETL Improvements and Star Schema Enhancements

## Overview
This document explains the incremental improvements made to the Star Schema and ETL process to enhance data integrity, analytical accuracy, and performance.

---

## 1. Dimensional Tables Enhancements

### Dim_Customer
- **Change:** Added surrogate key `customer_sk`
- **Reason:** Separates business key from analytical key, improves joins and BI performance.

### Dim_Product
- **Change:** Converted `weight` column from FLOAT to DECIMAL(10,2), added `product_sk`
- **Reason:** FLOAT is imprecise for analytics; surrogate key improves Star Schema consistency.

### Dim_Seller
- **Change:** Added `seller_sk` surrogate key
- **Reason:** Ensures consistent joins and supports incremental ETL.

### Dim_Date
- **Change:** Added columns `day`, `day_name`, `month_name`
- **Reason:** Provides richer time hierarchy for reporting and dashboards.

---

## 2. Fact Table Improvements (Fact_Sales)

- **Change:** Rebuilt Fact_Sales table using JOINs between `orders`, `order_items`, and aggregated `order_payments`
- **Reason:** Previous table was missing relationships and accurate metrics. Now it contains:
  - Correct `payment_value`
  - Quantity per order item
  - Proper connections to dimension tables

- **Change:** Aggregated payments to prevent duplicate inflation
- **Reason:** Ensures that each order has a single accurate payment value for analytics.

---

## 3. Data Quality Checks

- **Change:** Added SQL validation queries to count total rows and unique orders
- **Reason:** Confirms ETL correctness and prevents missing or duplicated records.

---

## 4. Summary

These improvements bring the project to **production-level Star Schema** standards:

- Accurate ETL logic
- Surrogate keys in dimensions
- Enhanced Dim_Date for BI
- Aggregated payments in fact table

> This document demonstrates our commitment to **industry best practices**, which is highly relevant for recruiters and technical reviewers.