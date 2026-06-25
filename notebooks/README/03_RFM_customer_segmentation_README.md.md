# RFM Customer Segmentation Analysis

## Overview

This notebook performs customer segmentation analysis using the RFM (Recency, Frequency, Monetary) framework on the Olist Brazilian E-Commerce dataset.

The goal of this analysis is to identify different customer groups based on purchasing behavior and provide actionable business insights for customer retention, marketing strategies, and revenue growth.

---

# Business Objective

Understanding customer behavior is critical for improving retention and increasing customer lifetime value.

This analysis answers:

- Which customers are the most valuable?
- Which customers are at risk of churn?
- Which customers have potential to become loyal?
- How should marketing strategies differ between customer segments?

---

# Dataset Preparation

The analysis uses:

- Customers table
- Orders table
- Order Payments table

Customer identity is based on:

`customer_unique_id`

because one customer can have multiple orders through different customer IDs.

---

# RFM Metrics

## Recency

Measures how recently a customer purchased.

Lower Recency value = more recent activity.


## Frequency

Measures the number of unique orders placed by each customer.


## Monetary

Measures total customer spending.


---

# RFM Scoring

Each customer receives a score from 1 to 5:

- R Score → Purchase recency
- F Score → Purchase frequency
- M Score → Total spending


The final score:

RFM_Score = R + F + M


Example:

555 = Best customers

111 = Least engaged customers


---

# Customer Segments

Customers are classified into:

## Champions

High value customers with:

- Recent purchases
- High spending
- Strong engagement


## Loyal Customers

Customers with repeated purchases and good value.


## Potential Loyalists

Recent customers who may become loyal.


## At Risk

Previously valuable customers who have not purchased recently.


## Lost Customers

Inactive customers with low engagement.


## Others

Customers who do not fit into major groups.


---

# Key Findings


## Customer Base

Total analyzed customers:

99,441


## Customer Segmentation Results


| Segment | Customers |
|---|---:|
| At Risk | 22,967 |
| Others | 19,063 |
| Loyal Customers | 16,441 |
| Lost Customers | 15,463 |
| Potential Loyalists | 15,450 |
| Champions | 6,712 |


---

# Business Insights


## 1. Champions Segment

6,712 customers belong to the Champions group.

Examples:

- Customer with 3 orders and RFM 555
- Customer spending more than 9,500 BRL


These customers represent the highest-value group.

Recommended actions:

- VIP loyalty program
- Exclusive offers
- Early access campaigns


---

## 2. At Risk Customers

22,967 customers are classified as At Risk.

This is the largest segment.

These customers previously showed engagement but may leave.


Recommended actions:

- Retention campaigns
- Personalized discounts
- Re-engagement emails


---

## 3. Loyal Customers

16,441 customers show strong purchasing behavior.

Recommended actions:

- Loyalty rewards
- Cross-selling
- Product recommendations


---

## 4. Potential Loyalists

15,450 customers recently purchased and have growth potential.

Recommended actions:

- Encourage second purchase
- Bundle offers
- Personalized recommendations


---

# Visualizations


The notebook includes:

- Recency distribution
- Frequency distribution
- Monetary distribution
- Customer segment distribution
- RFM score analysis


---

# Tools & Technologies

Python

Libraries:

- Pandas
- NumPy
- Matplotlib
- Seaborn


Database:

SQL Server


Analytics:

- Customer Segmentation
- RFM Analysis
- Business Analytics


---

# Final Conclusion

RFM analysis transformed raw transactional data into actionable customer intelligence.

The analysis identified valuable customer groups and provided a foundation for:

- Customer retention strategies
- Marketing personalization
- Revenue optimization
- Future machine learning models