# Processed Data Files

This folder contains intermediate and analytical datasets generated during the project workflow.

The purpose of these files is to avoid re-running expensive ETL processes, SQL queries, and data preparation steps for every analysis notebook.

## Available Datasets

* **fact_sales.csv** → Cleaned sales fact table used for business analysis.
* **rfm_customers.csv** → Customer segmentation dataset containing Recency, Frequency, Monetary metrics and RFM segments.
* **dim_customer.csv** → Customer dimension data.
* **dim_product.csv** → Product dimension data.
* **dim_seller.csv** → Seller dimension data.

## Why These Files Exist

Instead of loading raw data and rebuilding transformations in every notebook, processed datasets are stored here to:

* Improve notebook performance
* Reduce execution time
* Ensure reproducible analysis
* Simplify advanced analytics such as:

  * Customer Segmentation
  * Churn Analysis
  * Revenue Optimization
  * Seller Performance Analysis
  * Business Intelligence Reporting

All files in this directory are generated from the project's ETL and analytical pipelines.
