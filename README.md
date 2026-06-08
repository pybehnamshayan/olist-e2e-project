# Olist E-Commerce End-to-End Data Analytics Project

## Project Overview

This project demonstrates a complete end-to-end data analytics workflow using the Olist Brazilian E-Commerce dataset.

The goal is to design a modern analytics solution by transforming raw transactional data into actionable business insights through data warehousing, exploratory data analysis, dashboarding, and machine learning.

The project follows industry-standard data engineering and analytics practices and is intended to showcase practical skills in SQL, Data Modeling, Python, Business Intelligence, and Machine Learning.

---

## Business Objectives

* Analyze sales performance
* Understand customer behavior
* Evaluate seller performance
* Identify high-performing product categories
* Monitor delivery efficiency
* Predict future sales trends
* Build machine learning models for business decision-making

---

## Technology Stack

### Database

* SQL Server / PostgreSQL
* Data Warehouse
* Star Schema Modeling

### Data Analysis

* Python
* Pandas
* NumPy

### Data Visualization

* Matplotlib
* Seaborn
* Power BI

### Machine Learning

* Scikit-Learn
* XGBoost

### Version Control

* Git
* GitHub

---

## Dataset

Source:

Olist Brazilian E-Commerce Public Dataset

Dataset contains information about:

* Customers
* Orders
* Products
* Sellers
* Payments
* Reviews
* Geolocation

---

## Project Architecture

Raw CSV Files

↓

Operational Database (Staging Layer)

↓

Data Cleaning & Transformation

↓

Data Warehouse (Star Schema)

↓

Exploratory Data Analysis

↓

Power BI Dashboard

↓

Machine Learning Models

↓

Business Insights

---

## Data Warehouse Design

### Fact Tables

* FactSales
* FactOrders

### Dimension Tables

* DimCustomer
* DimProduct
* DimSeller
* DimDate
* DimPayment

The warehouse follows a Star Schema architecture to optimize analytical queries and reporting performance.

---

## Project Structure

```text
olist-e2e-project/

├── data/
│   ├── raw/
│   └── processed/
│
├── database/
│   ├── ddl/
│   ├── dml/
│   └── star_schema/
│
├── notebooks/
│   ├── 01_data_understanding.ipynb
│   ├── 02_data_cleaning.ipynb
│   ├── 03_eda.ipynb
│   └── 04_machine_learning.ipynb
│
├── dashboards/
│
├── docs/
│
├── reports/
│
├── images/
│
├── README.md
│
└── .gitignore
```

---

## Exploratory Data Analysis

Key analyses include:

* Sales trends over time
* Revenue analysis
* Product category performance
* Customer distribution
* Seller analysis
* Delivery performance
* Review score analysis

---

## Dashboard

Power BI dashboard provides:

* Executive Summary
* Sales Performance
* Customer Analytics
* Product Analytics
* Seller Analytics
* Geographic Analysis

---

## Machine Learning

### Sales Forecasting

Predict future sales trends using historical transaction data.

### Customer Segmentation

Customer clustering using K-Means.

### Review Score Prediction

Predict customer review ratings.

### Customer Churn Analysis

Identify customers at risk of inactivity.

---

## Key Business Insights

* Top-performing product categories
* Revenue concentration patterns
* Customer purchasing behavior
* Delivery performance impact on reviews
* Seller performance distribution

---

## Future Improvements

* Automated ETL pipelines
* Incremental data loading
* Cloud deployment
* Real-time dashboards
* Advanced forecasting models

---

## Author

Data Analytics & Data Engineering Portfolio Project

Designed and developed as an end-to-end analytics solution using the Olist E-Commerce dataset.
