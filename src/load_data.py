import pandas as pd

# Data Warehouse
fact_sales = pd.read_csv("data/processed/fact_sales.csv")

dim_customer = pd.read_csv("data/processed/dim_customer.csv")

dim_product = pd.read_csv("data/processed/dim_product.csv")

dim_seller = pd.read_csv("data/processed/dim_seller.csv")

dim_date = pd.read_csv("data/processed/dim_date.csv")


# Analysis Files
rfm = pd.read_csv("data/processed/rfm_customers.csv")

lost_categories = pd.read_csv("data/processed/lost_categories.csv")

champion_categories = pd.read_csv("data/processed/champion_categories.csv")

seller_summary = pd.read_csv("data/processed/seller_summary.csv")

recovery_scenarios = pd.read_csv("data/processed/recovery_scenarios.csv")