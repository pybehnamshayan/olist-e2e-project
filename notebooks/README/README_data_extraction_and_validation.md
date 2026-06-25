# Data Extraction and Validation

## Overview

This notebook represents the initial stage of the Olist end-to-end analytics project.

The objective is to connect to the SQL Server data warehouse, extract data from fact and dimension tables, and perform initial data quality validation before conducting business analysis.

---

## Data Sources

The analysis uses data stored in a dimensional data model consisting of:

* Fact_Sales
* Dim_Customer
* Dim_Product
* Dim_Seller
* Dim_Date

All datasets are loaded directly from the SQL Server database.

---

## Activities Performed

### Database Connection

Established a connection to SQL Server and retrieved data from the data warehouse tables.

### Data Extraction

Loaded fact and dimension tables into Pandas DataFrames for analysis.

### Structure Validation

Reviewed:

* Dataset dimensions
* Column names
* Data types
* Table schemas

Methods used:

* `shape`
* `info()`
* `columns`

---

### Data Quality Assessment

Performed initial quality checks including:

#### Missing Values

Evaluated missing values across all tables.

Findings:

* Fact_Sales contains no missing values.
* Dim_Customer contains no missing values.
* Dim_Seller contains no missing values.
* Dim_Date contains no missing values.
* Dim_Product contains:

  * 610 missing values in `category`
  * 2 missing values in `weight`

#### Duplicate Records

Checked for duplicate rows in all tables.

Findings:

* No duplicate records were detected in any fact or dimension table.

---

## Key Findings

* The dimensional model is structurally consistent.
* Fact and dimension tables are complete and free of duplicate records.
* Missing values are limited to the product dimension and primarily affect product categorization.
* The dataset is suitable for exploratory and business analysis.

---

## Output

This notebook provides a validated analytical foundation for the next project phases:

1. Exploratory Data Analysis (EDA)
2. Product Performance Analysis
3. Business Insights Generation
4. Recommendation Development

---

## Technologies Used

* Python
* Pandas
* SQL Server
* Jupyter Notebook
