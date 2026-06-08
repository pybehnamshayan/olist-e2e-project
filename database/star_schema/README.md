# Star Schema Design - OlistDW

## Overview

This folder contains SQL scripts and documentation for building the Star Schema in the analytical database OlistDW. The Star Schema supports efficient analytics, reporting, and machine learning.

---

## Fact Tables

### FactSales

Metrics include:

- Order value
- Freight value
- Quantity sold

### FactOrders

Metrics include:

- Order count
- Delivery performance
- Order status metrics

---

## Dimension Tables

### DimCustomer

- Customer information
- Geographic attributes

### DimProduct

- Product details
- Product category

### DimSeller

- Seller information
- Seller location

### DimDate

- Calendar hierarchy (year, month, day)

### DimPayment

- Payment type
- Number of installments
- Payment amount

---

## Design Rationale

- **Star Schema** simplifies analytical queries and improves performance in Power BI.
- Dimensional tables reduce join complexity for business users.
- Fact tables contain aggregated metrics for reporting and analytics.

---

## Business Use Cases

- Analyze sales by customer, product, and seller
- Track delivery performance and delays
- Evaluate payment methods and order trends
- Feed clean and structured data to machine learning models