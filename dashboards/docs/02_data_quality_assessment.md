# Data Quality Assessment

## Overview

Before performing exploratory analysis and generating business insights, a comprehensive data quality assessment was conducted to evaluate the completeness, consistency, and reliability of the data warehouse.

The assessment focused on the following dimensions:

* Missing values
* Duplicate records
* Data completeness
* Dimensional integrity
* Fact table consistency

---

## Tables Evaluated

The following tables were included in the assessment:

| Table        | Description                          |
| ------------ | ------------------------------------ |
| Fact_Sales   | Sales transactions and order metrics |
| Dim_Customer | Customer information                 |
| Dim_Product  | Product attributes                   |
| Dim_Seller   | Seller information                   |
| Dim_Date     | Calendar dimension                   |

---

## Assessment Results

### Fact_Sales

| Metric            | Result  |
| ----------------- | ------- |
| Records           | 230,248 |
| Missing Values    | 0       |
| Duplicate Records | 0       |

**Finding**

The sales fact table is complete and contains no missing or duplicate records. The dataset is suitable for revenue, order, and customer behavior analysis.

---

### Dim_Customer

| Metric            | Result |
| ----------------- | ------ |
| Records           | 99,441 |
| Missing Values    | 0      |
| Duplicate Records | 0      |

**Finding**

Customer dimension data is complete and ready for segmentation and customer analytics.

---

### Dim_Product

| Metric                  | Result |
| ----------------------- | ------ |
| Records                 | 32,951 |
| Missing Category Values | 610    |
| Missing Weight Values   | 2      |
| Duplicate Records       | 0      |

**Finding**

A small number of products contain missing category information and weight attributes.

The missing category values represent approximately 1.85% of all product records and were retained to preserve associated sales transactions.

Products with missing category information can be classified as **Unknown Category** during analytical reporting.

---

### Dim_Seller

| Metric            | Result |
| ----------------- | ------ |
| Records           | 3,095  |
| Missing Values    | 0      |
| Duplicate Records | 0      |

**Finding**

Seller dimension data is complete and suitable for seller performance analysis.

---

### Dim_Date

| Metric            | Result |
| ----------------- | ------ |
| Records           | 634    |
| Missing Values    | 0      |
| Duplicate Records | 0      |

**Finding**

The date dimension is complete and provides all required calendar attributes for time-series analysis.

---

## Overall Data Quality Summary

| Quality Dimension    | Status |
| -------------------- | ------ |
| Completeness         | High   |
| Uniqueness           | High   |
| Consistency          | High   |
| Missing Data Impact  | Low    |
| Analytical Readiness | High   |

---

## Conclusion

The dimensional model demonstrates a high level of data quality and is suitable for business intelligence reporting, exploratory data analysis, customer analytics, and strategic decision-making.

The only identified issue involves a small number of products with missing category information. Given the low proportion of affected records and their potential impact on historical sales reporting, these records were retained and categorized as unknown rather than removed.

Overall, the dataset is considered analytically reliable and ready for downstream business analysis.
