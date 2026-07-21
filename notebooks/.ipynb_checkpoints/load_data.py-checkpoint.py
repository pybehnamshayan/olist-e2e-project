import pandas as pd

# ===========================
# FACT TABLE
# ===========================

fact_sales = pd.read_csv(
    "../data/processed/Fact_Sales.csv"
)

# ===========================
# DIMENSIONS
# ===========================

dim_customer = pd.read_csv(
    "../data/processed/Dim_Customer.csv"
)

dim_product = pd.read_csv(
    "../data/processed/Dim_Product.csv"
)

dim_seller = pd.read_csv(
    "../data/processed/Dim_Seller.csv"
)

dim_date = pd.read_csv(
    "../data/processed/Dim_Date.csv"
)

# ===========================
# ANALYTICS FILES
# ===========================

rfm = pd.read_csv(
    "../data/processed/RFM_Customers.csv"
)

lost_categories = pd.read_csv(
    "../data/processed/Lost_Categories.csv"
)

champion_categories = pd.read_csv(
    "../data/processed/Champion_Categories.csv"
)

seller_revenue = pd.read_csv(
    "../data/processed/Seller_Revenue.csv"
)

seller_category = pd.read_csv(
    "../data/processed/Seller_Category_Revenue.csv"
)