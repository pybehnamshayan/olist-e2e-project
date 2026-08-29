# Olist Customer Analytics & Business Intelligence Platform

[![SQL Server](https://img.shields.io/badge/SQL%20Server-Data%20Warehouse-red)](./database)
[![Python ETL](https://img.shields.io/badge/Python-ETL%20Pipeline-blue)](./notebooks/01_data_extraction_and_validation.ipynb)
[![Power BI Reports](https://img.shields.io/badge/PowerBI-Reports-F2C811?logo=powerbi&logoColor=black)](./dashboards/reports)
[![Dashboard Preview](https://img.shields.io/badge/Dashboard-Preview-0078D4?logo=powerbi&logoColor=white)](./dashboards/images/Power%20BI/)
[![RFM Segmentation](https://img.shields.io/badge/Analytics-RFM%20Segmentation-green)](./notebooks/03_RFM_Customer_Segmentation.ipynb)
[![Customer Churn](https://img.shields.io/badge/Analytics-Churn%20Analysis-orange)](./notebooks/04_champions_vs_lost_analysis.ipynb)
[![Business Impact](https://img.shields.io/badge/Business-Revenue%20Opportunity-success)](./notebooks/04_champions_vs_lost_analysis.ipynb)
[![Star Schema](https://img.shields.io/badge/SQL-Star%20Schema-blueviolet)](./database)
[![RFM Charts](https://img.shields.io/badge/Visualization-RFM%20Charts-informational)](./dashboards/images/RFM)
[![Project Images](https://img.shields.io/badge/Visuals-Project%20Images-lightgrey)](./dashboards/images)
[![Executive Report](https://img.shields.io/badge/Executive-Business%20Recommendations%20PDF-C89B3C)](./reports/Executive_Business_Recommendations.pdf)

---

### 📄 [Read the Executive Business Recommendations Report (PDF)](./reports/Executive_Business_Recommendations.pdf)

A CEO/CFO-facing report that turns the technical analysis below into a business diagnosis, a quantified revenue opportunity, a segment-level retention strategy, a priority matrix, and a 90-day action plan.

---

## Project Overview

The objective was to build an end-to-end analytics platform that connects data engineering, customer analytics, BI reporting, and executive decision-making.

Rather than stopping at dashboards, the project translates analytical findings into quantified revenue opportunities, customer retention strategies, prioritized business actions, and a 90-day execution plan.

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
* **Executive Strategy & Business Recommendations**
* Machine Learning (Next Phase)

---

## From Data to Decision: The Executive Layer

Most portfolio projects stop at "here is the dashboard." This one goes one step further: every technical finding below is translated into a business diagnosis, a dollar figure, and a recommended action — culminating in a standalone [**Executive Business Recommendations report**](./reports/Executive_Business_Recommendations.pdf) covering:

| Section | What it answers |
|---|---|
| Current Business Situation | What state is the business actually in? |
| Top 5 Problems | What's actually broken, ranked? |
| Revenue at Risk | How much money is this costing, precisely? |
| Revenue Opportunities | Where is the recoverable upside? |
| Customer Retention Strategy | What does each customer segment need? |
| Product Strategy | Which categories to protect, fix, or sunset? |
| Recommended Actions | What should leadership actually do? |
| Expected Financial Impact | What's the ROI under different scenarios? |
| Priority Matrix | What gets done first? |
| 90-Day Action Plan | What happens week by week? |

This is the layer that turns "I analyzed the data" into "I diagnosed the business, quantified the opportunity, and gave leadership a plan."

---

## Business Impact Highlights

### Revenue Opportunity Analysis

A dedicated customer analytics study was conducted to compare:

* Champion Customers
* Lost High-Value Customers

Key finding — the **potential upside**, not revenue already realized:

### +65.8% Revenue Opportunity

*If high-value customers had been retained, total revenue could be up to 65.8% higher than it is today.*

Financial Impact:

| Metric                    | Value  |
| ------------------------- | ------ |
| Current Revenue           | $3.75M |
| Lost Revenue Opportunity  | $2.47M |
| Maximum Potential Revenue | $6.21M |

*Full recapture scenarios (conservative / moderate / aggressive) are modeled in the [Executive Report](./reports/Executive_Business_Recommendations.pdf).*

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

| Segment             | Customers | Share of Base |
| ------------------- | --------- | -------------- |
| At Risk             | 22,967    | 26.4% |
| Others              | 19,063    | 21.9% |
| Loyal Customers     | 16,441    | 18.9% |
| Lost Customers      | 15,463    | 17.8% |
| Potential Loyalists | 15,450    | 17.8% |
| Champions           | 6,712     | 7.7%  |

Champions — the segment that historically drives disproportionate revenue — make up only 7.7% of the customer base, while At Risk and Lost customers together make up 44.2%. This distribution is the starting point for the retention strategy laid out in the Executive Report.

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

*→ These findings are prioritized into concrete actions in the [Executive Report's Priority Matrix and 90-Day Plan](./reports/Executive_Business_Recommendations.pdf).*

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
│   ├── reports/
│   └── images/
│       ├── Power BI/
│       └── RFM/

└── reports/
    └── Executive_Business_Recommendations.pdf
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

* ✅ Executive Business Recommendations Report — *Completed*
* Customer Churn Prediction
* Customer Lifetime Value (CLV)
* Cohort Analysis
* Market Basket Analysis
* Recommendation Systems
* Machine Learning Models

---

## Author

**Behnam Shayan**

Customer Insights & Business Intelligence Analyst — Data Analytics | Customer Analytics | Business Strategy

[GitHub](https://github.com/pybehnamshayan) · [LinkedIn](#)
