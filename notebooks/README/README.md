# Jupyter Notebook - Data Extraction & Exploratory Data Analysis

## Overview

This notebook demonstrates the process of connecting to the Sales Data Warehouse, extracting analytical datasets using SQL queries, and performing Exploratory Data Analysis (EDA) using Python and Pandas.

The notebook is designed as part of an end-to-end Business Intelligence and Data Warehousing project, showcasing the integration between SQL Server, dimensional modeling, and analytical workflows.

---

## Objectives

The primary objectives of this notebook are:

* Connect to the Sales Data Warehouse.
* Execute reusable SQL scripts stored in the project repository.
* Load query results into Pandas DataFrames.
* Perform data validation and quality checks.
* Explore sales, customer, product, seller, and geographic dimensions.
* Generate datasets for reporting and advanced analytics.
* Prepare data for dashboard development and machine learning workflows.

---

## Data Warehouse Architecture

The underlying data warehouse follows a Star Schema design.

### Fact Table

* Fact_Sales

### Dimension Tables

* Dim_Customer
* Dim_Product
* Dim_Seller
* Dim_Date

This structure supports efficient analytical querying and business reporting.

---

## Notebook Workflow

### 1. Environment Setup

The notebook begins by importing required Python libraries and configuring the analytical environment.

Libraries used:

* Pandas
* NumPy
* SQLAlchemy
* PyODBC

---

### 2. Database Connection

A connection is established to Microsoft SQL Server using SQLAlchemy and ODBC drivers.

Purpose:

* Secure database connectivity
* Query execution
* Data extraction

---

### 3. SQL Script Integration

Rather than embedding SQL statements directly in the notebook, queries are stored as standalone `.sql` files.

Benefits:

* Reusability
* Version control
* Better project organization
* Separation of concerns

---

### 4. Data Extraction

Analytical datasets are loaded from the data warehouse into Pandas DataFrames.

Examples include:

* Sales Dataset
* Monthly Sales Trends
* Top Customers
* Customer Segmentation
* KPI Dashboard Dataset

---

### 5. Data Quality Assessment

The notebook performs initial validation checks, including:

* Dataset dimensions
* Data types
* Missing values
* Summary statistics

Purpose:

* Ensure data consistency
* Detect anomalies
* Validate ETL outputs

---

### 6. Exploratory Data Analysis (EDA)

EDA activities include:

#### Sales Analysis

* Revenue distribution
* Order volume analysis
* Sales trends over time

#### Customer Analysis

* Top customers
* Geographic distribution
* Customer segmentation

#### Product Analysis

* Best-selling products
* Product category performance

#### Seller Analysis

* Seller performance evaluation
* Revenue contribution analysis

---

### 7. KPI Generation

Business KPIs are extracted and analyzed, including:

* Total Revenue
* Total Orders
* Total Customers
* Total Sellers
* Average Order Value
* Freight Cost Analysis

These metrics support dashboard development and executive reporting.

---

### 8. Data Export

Processed datasets can be exported for downstream consumption.

Supported outputs:

* CSV files
* Power BI datasets
* Machine Learning datasets

---

## Project Structure

```text
project/

├── data/
│   ├── raw/
│   └── processed/
│
├── notebooks/
│   ├── 01_data_extraction.ipynb
│   └── 02_eda.ipynb
│
├── sql/
│   └── eda/
│       ├── 01_sales_dataset.sql
│       ├── 02_data_quality_check.sql
│       ├── 03_monthly_sales_trend.sql
│       ├── 04_quarterly_sales_trend.sql
│       ├── 05_top_customers.sql
│       ├── 06_sales_by_state.sql
│       ├── 07_top_categories.sql
│       ├── 08_top_products.sql
│       ├── 09_top_sellers.sql
│       ├── 10_ml_dataset.sql
│       ├── 11_customer_segmentation.sql
│       └── 12_sales_kpi_dashboard.sql
│
└── README.md
```

---

## Technologies Used

### Database

* Microsoft SQL Server
* SQL Server Management Studio (SSMS)

### Data Warehouse

* Star Schema
* Dimensional Modeling
* Fact and Dimension Tables

### Data Analysis

* Python
* Pandas
* NumPy
* Jupyter Notebook

### Business Intelligence

* Power BI
* KPI Reporting
* Data Visualization

---

## Skills Demonstrated

This notebook demonstrates practical experience in:

* Data Warehousing
* Dimensional Modeling
* SQL Query Development
* Data Extraction
* Exploratory Data Analysis
* Data Quality Validation
* Business Intelligence
* KPI Development
* Customer Analytics
* Feature Engineering
* Data Preparation for Machine Learning

---

## Business Value

The notebook transforms raw warehouse data into actionable business insights that can support:

* Executive decision-making
* Sales performance monitoring
* Customer behavior analysis
* Product performance evaluation
* Strategic business planning

---

## Author

Data Warehouse & Analytics Portfolio Project

Designed to demonstrate real-world Business Intelligence and Data Analytics workflows using SQL Server, Python, and modern data warehousing practices.
