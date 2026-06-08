## Metadata
- Project: Olist End-to-End Analytics
- Layer: Data Warehouse / ETL / EDA
- Tools: SQL Server, Python, Power BI




# EDA SQL Queries

This folder contains SQL queries used for **Exploratory Data Analysis (EDA)** on the Olist Data Warehouse (OlistDW).  
These queries are designed to provide insights into sales, customers, products, and delivery logistics.

---

## Folder Structure

- `sales_analysis.sql` : Queries related to overall sales, monthly trends, top products, and top sellers.
- `customer_analysis.sql` : Queries about customer behavior, purchase frequency, and total spending.
- `product_analysis.sql` : Queries about product categories, top-selling products, and revenue distribution.
- `delivery_analysis.sql` : Queries about freight, delivery trends, and regional analysis.

---

## How to Use

1. Open your SQL editor (e.g., SSMS) and connect to **OlistDW**.
2. Execute queries in the desired file to generate analytical insights.
3. Use the results to create visualizations in Power BI or other BI tools.

---

## Purpose

The EDA SQL queries are designed to:

- Validate data quality in the Fact and Dimension tables.
- Identify key business trends and insights.
- Prepare aggregated metrics for dashboard creation.
- Support decision-making and advanced analytics.

---

## Notes

- Always ensure the database is up-to-date with ETL pipelines before running the queries.
- Some queries use `LIMIT 10` or aggregation functions; modify according to your analysis needs.