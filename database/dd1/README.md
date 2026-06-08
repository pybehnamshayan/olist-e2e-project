## Metadata
- Project: Olist End-to-End Analytics
- Layer: Data Warehouse / ETL / EDA
- Tools: SQL Server, Python, Power BI



# DDL Scripts - Olist Project

## Overview

This folder contains all Data Definition Language (DDL) scripts for creating the database structures in both the operational database (OlistDB) and the analytical data warehouse (OlistDW).

---

## Operational Database (OlistDB)

The operational database stores raw tables imported directly from CSV files. These tables preserve the original dataset structure and serve as the staging layer for ETL processes.

### Tables in OlistDB

- Customers
- Geolocation
- Orders
- Order_Payments
- Order_Reviews
- Products
- Sellers
- Category_Name

### Purpose

- Store raw transactional data
- Support validation and data quality checks
- Serve as staging environment for the ETL process

---

## Data Warehouse (OlistDW)

The analytical database implements a Star Schema model for reporting and business intelligence.

### Dimension Tables

- DimCustomer
- DimProduct
- DimSeller
- DimDate
- DimPayment

### Fact Tables

- FactSales
- FactOrders

### Purpose

- Enable fast analytical queries
- Simplify business reporting
- Provide clean, structured data for dashboards and machine learning