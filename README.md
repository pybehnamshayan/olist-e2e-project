# Olist Customer Analytics & Business Intelligence Platform

[![SQL Server](https://img.shields.io/badge/SQL%20Server-Data%20Warehouse-red)](./database)

[![Python ETL](https://img.shields.io/badge/Python-ETL%20Pipeline-blue)](./notebooks/01_data_extraction_and_validation.ipynb)

[![Power BI](https://img.shields.io/badge/PowerBI-Dashboards-yellow)](./dashboards)

[![RFM Segmentation](https://img.shields.io/badge/Analytics-RFM%20Segmentation-green)](./notebooks/03_RFM_Customer_Segmentation.ipynb)

[![Customer Churn](https://img.shields.io/badge/Analytics-Churn%20Analysis-orange)](./notebooks/04_champions_vs_lost_analysis.ipynb)

[![Business Impact](https://img.shields.io/badge/Business-Revenue%20Opportunity-success)](./notebooks/04_champions_vs_lost_analysis.ipynb)

[![Star Schema](https://img.shields.io/badge/SQL-Star%20Schema-blueviolet)](./database)

[![RFM Charts](https://img.shields.io/badge/Visualization-RFM%20Charts-informational)](./dashboards/images/RFM)

[![Project Images](https://img.shields.io/badge/Visuals-Project%20Images-lightgrey)](./dashboards/images)

## Project Overview

This project demonstrates an end-to-end analytics solution built using the Olist Brazilian E-Commerce dataset.

The objective was not only to build a Data Warehouse and reporting infrastructure, but also to extract actionable business insights that can directly support decision-making, customer retention, and revenue optimization.

The project covers the complete analytics lifecycle:

* Data Extraction & Validation
* Data Cleaning & Preparation
* Data Warehouse Design
* Star Schema Modeling
* ETL Development
* Exploratory Data Analysis (EDA)
* Customer Segmentation (RFM)
* Customer Churn Intelligence
* Revenue Opportunity Analysis
* Power BI Dashboards
* Machine Learning (Next Phase)

---

## Business Impact Highlights

### Revenue Opportunity Analysis

A dedicated customer analytics study was conducted to compare:

* Champion Customers
* Lost High-Value Customers

Key finding:

If high-value customers had been retained successfully, total revenue could have increased by:

# +65.8%

Financial Impact:

| Metric                    | Value  |
| ------------------------- | ------ |
| Current Revenue           | $3.75M |
| Lost Revenue Opportunity  | $2.47M |
| Maximum Potential Revenue | $6.21M |

---

## Key Business Findings

### Category Performance

Top Revenue Categories:

| Category             | Revenue |
| -------------------- | ------- |
| Bed, Bath & Table    | $3.42M  |
| Health & Beauty      | $3.31M  |
| Computer Accessories | $3.17M  |
| Home Decoration      | $2.86M  |
| Watches & Gifts      | $2.85M  |

---

### Sales Behavior

* Monday and Tuesday generate the highest sales volume.
* Weekend performance is significantly lower.
* Several categories exhibit stable weekday demand patterns.

---

### Product Analysis

Top Revenue Products:

* telefonia_fixa
* beleza_saude
* ferramentas_jardim

The analysis revealed a strong Pareto distribution where a small number of products generate a disproportionately large share of total revenue.

---

### Customer Analytics

Customer segmentation was performed using the RFM methodology.

Customer Segments:

* Champions
* Loyal Customers
* Potential Loyalists
* At Risk
* Lost Customers
* Others

Top Segment Distribution:

| Segment             | Customers |
| ------------------- | --------- |
| At Risk             | 22,967    |
| Others              | 19,063    |
| Loyal Customers     | 16,441    |
| Lost Customers      | 15,463    |
| Potential Loyalists | 15,450    |
| Champions           | 6,712     |

---

## Advanced Customer Churn Intelligence

A dedicated analysis was performed to identify:

* High-value customers who churned
* Lost revenue by product category
* Retention opportunities
* Categories at risk

Critical Findings:

* telefonia_fixa → Complete Champion Customer Loss
* cool_stuff → Complete Champion Customer Loss
* ferramentas_jardim → Lost Revenue exceeds active revenue
* moveis_escritorio → Lost Revenue exceeds active revenue

Best Retention Categories:

* utilidades_domesticas
* automotivo

---

## Project Structure

```text
olist-e2e-project/

├── README.md

├── database/
│   ├── ddl/
│   ├── dml/
│   └── star_schema/

├── notebooks/
│   ├── 01_data_extraction_and_validation.ipynb
│   ├── 02_exploratory_data_analysis.ipynb
│   ├── 03_rfm_customer_segmentation.ipynb
│   └── 04_champions_vs_lost_analysis.ipynb

├── dashboards/
│   └── Power BI Files

├── images/

└── reports/
```

## Technologies

* SQL Server
* Python
* Pandas
* NumPy
* SQLAlchemy
* Jupyter Notebook
* Power BI
* Git & GitHub

---

## Future Enhancements

* Interactive Power BI Executive Dashboard
* Customer Churn Prediction
* Customer Lifetime Value (CLV)
* Cohort Analysis
* Market Basket Analysis
* Recommendation Systems
* Machine Learning Models

---

## Author

Behnam Shayan

Data Analyst | BI Analyst | Customer Analytics | Business Intelligence
