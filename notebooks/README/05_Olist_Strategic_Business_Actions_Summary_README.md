# 🛒 Olist E-Commerce Data-Driven Growth Playbook
### Optimizing Customer Retention, Preventing Revenue Leakage, and Realigning Marketing ROI

---

## 📌 Executive Summary
This project shifts the analytical paradigm from traditional descriptive analytics to **Strategic Prescriptive Actions** for Olist's C-Level executives. By merging multi-database infrastructures (Operational `OlistDB` and Data Warehouse `OlistDW`) and executing an advanced **RFM (Recency, Frequency, Monetary) Analysis**, this repository uncovers hidden operational friction and provides a concrete roadmap to maximize Customer Lifetime Value (LTV) without increasing acquisition costs.

### 💰 Key Financial Impact
By deploying the targeted playbooks in this analysis, Olist can unlock **an estimated incremental revenue recovery of over $800,000** purely by mitigating churn in high-value segments, without inflating the current marketing budget.

---

## 🔍 Core Insights & Root Cause Analysis

### 1. Identifying "Revenue Leakage" in High-Value Categories
The analysis rejects the hypothesis that customer churn is inherently a "product demand" problem. Instead, it proves that revenue is being generated, but **customer equity is being destroyed post-purchase**.

*   **Critical Risk Concentration:** A small group of product categories account for a disproportionate share of lost revenue (The Pareto Principle).
    *   **`telefonia_fixa` (Fixed Telephony):** Exhibited a massive structural failure, generating **$238K** from lost high-value customers compared to a meager **$11K** from active Champion customers.
    *   **`cool_stuff`:** Experienced a leakage of over **$334K** in lost high-value revenue while retaining only **$143K** in the Champion segment.
    *   **`informatica_acessorios` & `relogios_presentes`:** Generated massive one-time revenue (> $250K each from lost customers) but failed to build long-term retention.
*   **Complete Segment Collapse:** Categories like `casa_conforto_2`, `flores`, `cds_dvds_musicais`, and `seguros_e_servicos` demonstrate a **100% loss of high-value customer segments**, leaving $0 in active Champion revenue.

### 2. Hypothesis Validation: "Bad Product" vs. "Bad Seller"
*   **Hypothesis 1: Churn is driven by product categories ❌ (REJECTED)**
    *   *Proof:* High-churn categories simultaneously appear prominently in the **Champions** segment. The market actively wants these products.
*   **Hypothesis 2: Churn is driven by localized operational friction ⚠️ (VALIDATED)**
    *   *Proof:* Olist's **Seller Concentration Index stands at 0.301**, meaning **~30% of all lost revenue is driven by a highly concentrated, toxic group of sellers**. 
    *   Specific categories are bottlenecked by single dominant sellers (e.g., `telefonia_fixa` ➡️ Seller `b37...`, `cool_stuff` ➡️ Seller `7a67...`). Customers churn because of poor logistics, delivery delays, and quality variance from these specific operators, not the category itself.

### 3. The "One-and-Done" High-Value Paradox
An alarming segment of customers made high-value initial purchases ranging from **$300 to $800+** (Monetary Score = 5, Frequency = 1) but never returned. 
> *Conclusion:* The acquisition strategy successfully targeted high-purchasing-power customers, but the post-purchase retention framework failed completely.

---

## 🛠 Strategic Action Plan (The C-Level Playbook)

Management should immediately transition from generic marketing campaigns to the following three data-backed tactical playbooks:

### Playbook 1: The 3-Tier Marketing Budget Realignment
Stop treating all product categories equally. Segment the marketing budget based on **Natural Category Repeat Purchase Rates (RPR)**:
1.  **The Retention Funnel (RPR > 10% | e.g., `la_cuisine`, `fashion`):** Shift budget from paid acquisition (Google/Meta Ads) to **CRM, Loyalty Programs, and Personalized Cross-Selling**. 
2.  **The Acquisition Funnel (RPR 3% - 5% | e.g., `cool_stuff`, `electronics`):** Treat as low-frequency, high-volume goods. Focus strictly on **Optimizing CAC (Customer Acquisition Cost)** and Web CRO. Do not waste budget on retention here.
3.  **The "One-and-Done" Funnel (RPR < 2% | e.g., `flores`, `seguros`):** **Blacklist** from retention campaigns. Treat purely as high-margin, entry-level acquisition hooks.

### Playbook 2: Plugging Revenue Leakage via Seller Off-Boarding
*   **Action:** Apply an immediate **Seller Risk Scoring Model** combining `review_score`, logistics delays, and return rates.
*   **Execution:** Issue strict operational penalties or off-board dominant toxic sellers in high-potential categories like `telefonia_fixa` (RPR: **5.53%**) to save the category from operational degradation.

### Playbook 3: Supply Chain & Inventory Prioritization
*   Flag high-retention categories like **Bed, Bath & Table (`cama_mesa_banho`)**—which holds over **9,100 Champion customers**—and **Health & Beauty (`beleza_saude`)** (8,600+ Champions) as **Zero Stock-Out Priorities** in the warehouse.
*   Shift low-RPR categories to a decentralized **Drop-shipping** model to eliminate warehouse overhead costs.

---

## 💻 Tech Stack & Architecture
*   **Data Orchestration & ETL:** Python, Pandas, SQLAlchemy
*   **Database Infrastructure:** SQL Server (Relational `OlistDB` + Star-Schema `OlistDW`)
*   **Database Driver:** PyODBC
*   **Analytical Framework:** RFM Segmentation, Cohort Analysis, Repeat Purchase Rate (RPR) Modeling

## 📂 Project Structure
```text
├── data/
│   ├── OlistDB/          # Extracted Operational Data (orders, customers, payments)
│   └── OlistDW/          # Extracted Data Warehouse Data (fact_sales, dimensions)
├── notebooks/
│   ├── 01_data_extraction_etl.ipynb   # Robust ETL & Data Local Caching Pipeline
│   ├── 02_rfm_segmentation.ipynb      # Advanced RFM Modeling & Cohort Analysis
│   └── 03_executive_growth_playbook.ipynb  # C-Level Prescriptive Business Strategy (This Report)
└── README.md