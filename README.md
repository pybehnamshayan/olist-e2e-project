## Metadata
- Project: Olist End-to-End Analytics
- Layer: Data Warehouse / ETL / EDA
- Tools: SQL Server, Python, Power BI



## Project Overview

This project provides an end-to-end data analytics and engineering solution using the Olist Brazilian E-Commerce dataset. The pipeline covers all steps from raw data ingestion to analytical dashboards and machine learning.

**Key Components:**

- Data ingestion and storage
- Database design (Operational + Data Warehouse)
- ETL and data transformation
- Star Schema design for analytical queries
- Exploratory Data Analysis (EDA)
- Dashboard creation (Power BI)
- Machine learning models for business insights

**Technologies Used:**

- PostgreSQL / MySQL (Database)
- Python (Pandas, SQLAlchemy)
- Jupyter Notebooks
- Power BI
- Git & GitHub

---

## Project Structure

```text
olist-e2e-project/
│
├── README.md                # This main file
├── .gitignore
│
├── data/                    # Data files (raw & processed)
│   ├── raw/
│   └── processed/
│
├── database/
│   ├── ddl/                 # DDL scripts
│   ├── dml/                 # DML scripts
│   └── star_schema/         # Star Schema scripts
│
├── docs/                    # Step-by-step documentation
│   ├── 01_project_scope.md
│   ├── 02_database_creation.md
│   ├── 03_star_schema_design.md
│   ├── 04_data_cleaning.md
│   ├── 05_eda.md
│   ├── 06_dashboard_design.md
│   └── 07_machine_learning.md
│
├── notebooks/               # Jupyter notebooks for analysis
├── dashboards/              # Power BI dashboards
├── images/                  # Supporting images (ERD, charts)
└── reports/                 # Exported reports