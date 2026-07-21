# Power BI Dashboard

## Project Overview

This dashboard is the Business Intelligence layer of my **End-to-End Customer Analytics Project** built using the Brazilian Olist E-Commerce dataset.

The dashboard transforms a SQL Server Data Warehouse into an interactive executive reporting solution using Microsoft Power BI.

The primary objective is to help decision-makers understand customer behavior, identify revenue leakage, evaluate seller performance, and quantify the financial impact of customer retention strategies.

---

## Data Model

The report is built on a Star Schema consisting of:

* Fact_Sales
* Dim_Customer
* Dim_Product
* Dim_Seller
* Dim_Date
* RFM Customer Segmentation

The model follows Power BI best practices using one-to-many relationships and single-direction filtering.

---

## Dashboard Pages

### 1. Executive Overview

Provides a high-level business summary including:

* Revenue
* Orders
* Customers
* Average Order Value (AOV)
* Revenue Trends
* Geographic Sales Distribution

---

### 2. Customer Segmentation

Built using RFM Analysis.

Key insights include:

* Champion Customers
* Loyal Customers
* Potential Loyalists
* Lost Customers
* Customer Distribution
* Revenue by Segment

---

### 3. Customer Churn Analysis

Identifies revenue leakage caused by customer churn.

Includes:

* Lost Revenue
* Lost Customers
* Lost Revenue by Category
* Revenue Comparison between Champions and Lost Customers

---

### 4. Seller Performance

Evaluates seller contribution using:

* Revenue
* Orders
* Customer Count
* Top Sellers
* Seller Performance Comparison

This analysis helped identify seller concentration as a potential driver of customer churn.

---

### 5. Product Category Analysis

Measures category performance through:

* Revenue
* Orders
* Freight Cost
* Customer Count
* Top Categories

---

### 6. Revenue Recovery Simulation

Business scenario analysis demonstrating the financial impact of reducing customer churn.

Recovery scenarios:

* 5%
* 10%
* 15%
* 20%
* 25%

The analysis estimates potential recovered revenue generated through improved customer retention.

---

## Technologies

* Microsoft Power BI
* DAX
* SQL Server
* Star Schema Data Warehouse
* Python (Data Preparation)
* Pandas

---

## Business Value

This dashboard demonstrates how Business Intelligence can translate customer behavior into measurable financial outcomes.

Instead of only describing customer churn, the analysis estimates its monetary impact and provides actionable insights for strategic decision-making.

---

## Repository Structure

```text
powerbi/
│
├── Olist_Dashboard.pbix
├── README.md
```

---

**Author**

Behnam

Data Analytics | Business Intelligence | Customer Analytics
