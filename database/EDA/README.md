## Metadata
- Project: Olist End-to-End Analytics
- Layer: Data Warehouse / ETL / EDA
- Tools: SQL Server, Python, Power BI




# Exploratory Data Analysis (EDA)

## Overview

This directory contains SQL scripts used to explore and analyze the Sales Data Warehouse built using a dimensional modeling approach.

The warehouse follows a Star Schema architecture and consists of:

### Fact Table

* Fact_Sales

### Dimension Tables

* Dim_Customer
* Dim_Product
* Dim_Seller
* Dim_Date

The objective of these SQL scripts is to support data exploration, business analysis, data quality validation, and preparation of analytical datasets for Python, Pandas, and Power BI.

---

# EDA Objectives

The analysis focuses on:

* Sales performance over time
* Customer behavior analysis
* Product performance analysis
* Seller performance analysis
* Geographic sales distribution
* Data quality assessment
* Machine learning dataset preparation

---

# SQL Scripts

| File                         | Description                                 |
| ---------------------------- | ------------------------------------------- |
| 01_sales_dataset.sql         | Creates a denormalized dataset for analysis |
| 02_data_quality_check.sql    | Performs data quality validation            |
| 03_monthly_sales_trend.sql   | Monthly sales trend analysis                |
| 04_quarterly_sales_trend.sql | Quarterly sales trend analysis              |
| 05_top_customers.sql         | Top customer analysis                       |
| 06_sales_by_state.sql        | Geographic sales analysis                   |
| 07_top_categories.sql        | Product category performance                |
| 08_top_products.sql          | Top-selling products                        |
| 09_top_sellers.sql           | Seller performance analysis                 |
| 10_ml_dataset.sql            | Dataset generation for machine learning     |

---

# Analytical Workflow

1. Execute SQL scripts against the Sales Data Warehouse.
2. Import results into Pandas DataFrames.
3. Perform exploratory data analysis.
4. Create visualizations using Python.
5. Generate business insights.
6. Build Power BI dashboards.
7. Prepare data for predictive modeling.

---

# Business Questions Answered

### Sales Trends

* How does revenue evolve over time?
* Are there seasonal patterns?

### Customer Analysis

* Who are the most valuable customers?
* Which regions generate the highest revenue?

### Product Analysis

* Which categories drive sales?
* What products are most frequently purchased?

### Seller Analysis

* Which sellers contribute most to revenue?
* How concentrated is seller performance?

### Data Quality

* Are there missing values?
* Is the warehouse populated correctly?

---

# Technologies

* SQL Server
* Data Warehouse
* Star Schema
* ETL
* Python
* Pandas
* NumPy
* Matplotlib
* Seaborn
* Jupyter Notebook
* Power BI

---

# Skills Demonstrated

* Data Warehousing
* Dimensional Modeling
* Star Schema Design
* SQL Analytics
* Exploratory Data Analysis
* Business Intelligence
* Data Visualization
* Data Quality Validation
* Feature Engineering
* Dashboard Development

---
## Additional Advanced Analytics

### 11_customer_segmentation.sql

Performs customer segmentation using RFM-inspired metrics.

Metrics:

- Recency
- Frequency
- Monetary Value

Business Value:

- Customer retention analysis
- VIP customer identification
- Marketing campaign targeting

---

### 12_sales_kpi_dashboard.sql

Provides executive-level business KPIs.

KPIs:

- Total Revenue
- Total Orders
- Total Customers
- Total Sellers
- Average Order Value
- Average Freight Cost
- Quantity Sold

Business Value:

- Executive reporting
- Power BI dashboards
- Performance monitoring

---

## Advanced Analytics Capabilities

This project demonstrates:

- Customer Analytics
- Revenue Analysis
- Product Analytics
- Seller Analytics
- Geographic Analytics
- KPI Development
- Dashboard Data Modeling
- Machine Learning Dataset Preparation

These analyses replicate real-world Business Intelligence workflows commonly used in enterprise environments.


# Project Goal

This project demonstrates an end-to-end Business Intelligence workflow, starting from a transactional e-commerce database, building a dimensional data warehouse, performing analytical querying, and preparing datasets for reporting and advanced analytics.

Author: Behnam shayan
