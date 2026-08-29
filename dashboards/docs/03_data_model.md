# Data Model

## Overview

The data model for this project is designed using a star schema structure to support efficient analysis of e-commerce sales data from the Olist dataset.

The model separates transactional data (fact table) from descriptive data (dimension tables) to enable scalable and structured analytics.

---

## Schema Design

### Fact Table

#### Fact_Sales

This table contains transactional sales data at the order-item level.

**Grain:** One row per product per order

Key attributes:
- sales_key (surrogate key)
- order_id
- customer_id
- product_id
- seller_id
- order_date
- payment_value
- freight_value
- quantity

This table is used for:
- Revenue analysis
- Order volume analysis
- Time-based performance tracking

---

### Dimension Tables

#### Dim_Customer

Contains customer-related attributes.

- customer_id
- city
- state
- customer_sk

Used for customer-level segmentation and geographic analysis.

---

#### Dim_Product

Contains product-related attributes.

- product_id
- category
- weight
- product_sk

Used for product category analysis and sales distribution.

Note: Some records have missing category values, which were retained to preserve transaction integrity.

---

#### Dim_Seller

Contains seller-related attributes.

- seller_id
- city
- state
- seller_sk

Used for seller performance analysis.

---

#### Dim_Date

Contains calendar attributes for time-based analysis.

- date
- year
- month
- quarter
- week
- day
- month_name
- day_name

Used for trend analysis across time periods.

---

## Relationships

- Fact_Sales is connected to all dimension tables via foreign keys:
  - customer_id → Dim_Customer
  - product_id → Dim_Product
  - seller_id → Dim_Seller
  - order_date → Dim_Date

---

## Design Choice

A star schema was selected because it:
- Simplifies analytical queries
- Improves performance for aggregation
- Supports scalable business intelligence reporting

---

## Summary

The data model enables structured analysis of sales performance, customer behavior, product distribution, and time-based trends within the Olist dataset.