# Olist Brazil E-Commerce Customer Analytics & Retention Dashboard

## Project Overview

This project is an end-to-end **Business Intelligence and Customer Analytics solution** built using **Python, SQL, and Microsoft Power BI** on the **Olist Brazilian E-Commerce Dataset**.

The main objective of this project is to analyze business performance, understand customer behavior, identify churn patterns, segment customers based on value, and provide actionable insights to improve customer retention.

The project combines:

* Sales performance analysis
* Customer behavior analysis
* RFM customer segmentation
* Customer churn analysis
* Retention strategy analysis
* Interactive Power BI dashboards

---

# Business Problem

E-commerce companies do not only need to acquire new customers; they need to understand:

* Which customers generate the most value?
* Which customers are likely to leave?
* Why are customers churning?
* How can retention strategies reduce customer loss?

This project focuses on answering these questions using data-driven analysis.

---

# Dataset

Dataset:

**Olist Brazilian E-Commerce Public Dataset**

The dataset contains real marketplace transaction data from Brazil, including:

* Customer information
* Orders
* Payments
* Products
* Sellers
* Reviews
* Geolocation data
* Product categories

---

# Data Processing & Preparation

The data pipeline included:

* Data cleaning
* Missing value handling
* Data type correction
* Table relationships creation
* Feature engineering
* Customer-level aggregation

A dimensional data model was created for Power BI reporting.

Main analytical tables:

* Fact_Sales
* Customer Dimension
* Date Dimension
* Product Category Dimension
* RFM Customer Table

---

# Customer Analytics

## RFM Segmentation

Customers were segmented using the RFM framework:

### Recency (R)

How recently a customer made a purchase.

### Frequency (F)

How frequently a customer purchases.

### Monetary (M)

Total customer spending value.

Customer segments include:

* Champions
* Loyal Customers
* Potential Loyalists
* At Risk Customers
* Lost Customers

This segmentation helps identify customer value and prioritize retention actions.

---

# Churn Analysis

A customer churn analysis was performed to identify customers at risk of leaving.

The analysis focused on:

* Customer inactivity patterns
* Purchase frequency decline
* Revenue contribution of churned customers
* Behavioral differences between active and lost customers

---

# Retention Strategy Analysis

A business impact scenario was evaluated:

## Objective:

Reduce customer churn by 5%

The analysis estimates:

* Potential recovered customers
* Additional retained revenue opportunity
* High-value customer groups requiring attention

The goal is to convert analytical findings into actionable business decisions.

---

# Power BI Dashboards

## Dashboard 1: Executive Overview

### Objective

Provide a high-level business performance overview for executives and sales managers.

---

## KPI Cards

### Total Revenue

```DAX
Total Revenue =
SUM(Fact_Sales[payment_value])
```

---

### Total Customers

```DAX
Total Customers =
DISTINCTCOUNT(Fact_Sales[customer_unique_id])
```

---

### Total Orders

```DAX
Total Orders =
DISTINCTCOUNT(Fact_Sales[order_id])
```

---

### Average Order Value

```DAX
AOV =
DIVIDE(
    [Total Revenue],
    [Total Orders]
)
```

---

## Visualizations

### Revenue Trend

Line Chart

Purpose:

* Track revenue growth over time

---

### Revenue by Category

Horizontal Bar Chart

Purpose:

* Identify top revenue-generating product categories

---

### Revenue by State

Filled Map

Purpose:

* Analyze geographic sales distribution across Brazil

---

# Dashboard 2: Customer Segmentation (RFM)

## Objective

Understand customer value distribution and identify retention opportunities.

---

## KPI Metrics

### Champions

High-value customers with strong purchasing behavior.

```DAX
Champions =
CALCULATE(
    COUNTROWS(rfm),
    rfm[Segment]="Champions"
)
```

---

### Lost Customers

Customers with high churn risk.

```DAX
Lost Customers =
CALCULATE(
    COUNTROWS(rfm),
    rfm[Segment]="Lost Customers"
)
```

---

### Champions Percentage

```DAX
Champions % =
DIVIDE(
    [Champions],
    COUNTROWS(rfm)
)
```

---

# Customer Segment Distribution

Visualization:

Donut Chart

Shows:

* Customer distribution by segment
* Customer value groups

---

# Revenue by Segment

Visualization:

Bar Chart

Purpose:

Compare revenue contribution across customer segments.

Metric:

```DAX
SUM(Monetary)
```

---

# RFM Heatmap

Visualization:

Matrix Heatmap

Configuration:

Rows:

```
R_score
```

Columns:

```
F_score
```

Values:

```
Customer Count
```

Purpose:

Identify customer concentration patterns based on purchasing behavior.

---

# Key Business Questions Answered

This project answers:

* What is the overall revenue performance?
* Which categories generate the highest revenue?
* Which regions contribute most sales?
* Who are the most valuable customers?
* Which customers are at risk of churn?
* What factors influence customer retention?
* What is the potential impact of reducing churn by 5%?

---

# Tools & Technologies

## Data Analysis

* Python
* Pandas
* NumPy
* Data Cleaning
* Feature Engineering

## Analytics

* RFM Modeling
* Customer Segmentation
* Churn Analysis
* Business Impact Analysis

## Visualization

* Microsoft Power BI
* DAX
* Data Modeling
* Interactive Dashboards

---

# Project Outcome

This project demonstrates how raw e-commerce data can be transformed into actionable business insights.

The final dashboard enables decision-makers to:

* Monitor business performance
* Understand customer behavior
* Identify churn risks
* Prioritize retention strategies
* Improve customer lifetime value

---

# Project Status

Completed:

✅ Data Preparation
✅ Exploratory Data Analysis
✅ Customer Segmentation
✅ RFM Analysis
✅ Churn Analysis
✅ Retention Impact Analysis
✅ Power BI Executive Dashboard
✅ Customer Analytics Dashboard
