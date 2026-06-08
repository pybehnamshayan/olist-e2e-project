## Metadata
- Project: Olist End-to-End Analytics
- Layer: Data Warehouse / ETL / EDA
- Tools: SQL Server, Python, Power BI



# DML Scripts - Olist Project

## Overview

This folder contains Data Manipulation Language (DML) scripts that populate, transform, and move data from OlistDB to OlistDW.

---

## ETL Process

The project follows a two-layer ETL pipeline:

1. **Operational Layer (OlistDB)**  
   Raw CSV files are imported into OlistDB with minimal transformation to preserve the original data.

2. **Analytical Layer (OlistDW)**  
   Data is extracted from OlistDB, transformed, and loaded into dimensional and fact tables following the Star Schema model.

---

## Key Transformations

- Data cleaning (removing duplicates, fixing data types)
- Joining tables for analytical purposes
- Generating surrogate keys for dimension tables
- Aggregating metrics for fact tables
- Enriching data (e.g., calculating delivery time, order totals)

---

## Purpose

These scripts ensure that OlistDW contains structured, reliable, and business-ready data for:

- Power BI dashboards
- Reporting and analytics
- Machine learning model development