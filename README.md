# 🚀 End-to-End Data Warehouse & Analytics Project

Welcome to the **End-to-End Data Warehouse & Analytics Project**! 

This repository showcases the complete lifecycle of an enterprise-grade data warehouse solution built with **SQL Server**. It covers raw data ingestion (**Bronze**), cleansing and transformation (**Silver**), dimensional modeling (**Gold**), and advanced SQL business analytics ranging from EDA to cohort and segmentation analysis.

---

## 🏗️ Data Architecture (Medallion Pattern)

The data warehouse follows the industry-standard **Medallion Architecture**:

```text
  [ Raw CSVs ] ──> 🟤 Bronze Layer ──> ⚪ Silver Layer ──> 🟡 Gold Layer ──> 📊 SQL Analytics
  (CRM & ERP)       (Raw Ingestion)     (Cleansed Data)     (Star Schema)     (Business Insights)
🟤 Bronze Layer (Raw Ingestion): Ingests raw data from CRM and ERP source systems into staging tables without altering the original values.

⚪ Silver Layer (Cleansing & Standardization): Cleanses missing values, removes duplicates, fixes data types, standardizes codes, and handles data quality issues.

🟡 Gold Layer (Dimensional Modeling): Models cleansed data into a Star Schema with facts and dimensions optimized for analytical queries and BI tools.

📁 Repository Structure
Plaintext
SQL-Data-Warehouse-Project/
│
├── datasets/                   # Raw CSV source data (CRM & ERP)
│
├── docs/                       # Architecture diagrams & naming conventions
│
├── scripts/                    # Core Data Engineering scripts
│   ├── bronze/                 # DDL & stored procedures for raw ingestion
│   ├── silver/                 # DDL & stored procedures for data cleansing
│   ├── gold/                   # DDL for star schema views (Facts & Dimensions)
│   ├── 01_eda/                 # Exploratory Data Analysis scripts
│   ├── 02_analytics/            # Advanced Business Analytics scripts
│   ├── 03_reports/              # Executive reporting views (Customer & Product)
│   └── init_database.sql       # Database creation script
│
├── tests/                      # Quality checks & validation test suites
│
└── README.md                   # Project documentation
📊 Analytics & Insights Capabilities
The analytics layer translates data warehouse tables into actionable business insights across three key stages:

🔍 1. Exploratory Data Analysis (EDA)
Database & Schema Exploration: Table structure verification and row count auditing.

Dimensional Exploration: Unique values, categorical breakdowns, and attribute distribution.

Date Range Auditing: Identifying boundaries for temporal analysis.

Measures Assessment: Summary statistics (min, max, mean, sum) for numerical fields.

📈 2. Advanced SQL Analytics
Magnitude & Ranking Analysis: Identifying top/bottom performing products and high-value customers using Window Functions (DENSE_RANK(), ROW_NUMBER()).

Time-Series Analysis: Year-over-Year (YoY) and Month-over-Month (MoM) sales performance tracking.

Cumulative Metrics: Running totals and moving averages for revenue trends.

Data Segmentation & RFM: Grouping customers based on purchase behavior, recency, and spend.

Part-to-Whole Metrics: Category contribution analysis to overall revenue.

📄 3. Executive Reporting Views
Customer 360 View (12_report_customers.sql): Aggregates lifetime value (LTV), total orders, average order value, and recency for every customer.

Product Performance View (13_report_products.sql): Measures revenue generated, quantity sold, profit margins, and sales rank across product categories.

🛠️ Tech Stack & Tools
Database Engine: Microsoft SQL Server (T-SQL)

IDE: SQL Server Management Studio (SSMS)

Architecture: Medallion Pattern (Bronze, Silver, Gold Layers)

Modeling: Dimensional Modeling (Star Schema)

Version Control: Git & GitHub

🚀 Getting Started
Clone the repository:

Bash
git clone [https://github.com/MuhammadShaaf/SQL-Data-Warehouse-Project.git](https://github.com/MuhammadShaaf/SQL-Data-Warehouse-Project.git)
Initialize Database:
Run scripts/init_database.sql in SSMS to create the database framework.

Run Ingestion & Transformation:
Execute the stored procedures in scripts/bronze/ and scripts/silver/ to populate and cleanse the layers.

Build Gold Layer:
Run scripts in scripts/gold/ to build the Star Schema views.

Run Analytics:
Execute scripts in scripts/01_eda/, scripts/02_analytics/, and scripts/03_reports/ to generate insights.

🌟 About Me
Hi there! 👋 I'm MuhammadShaaf.

I'm passionate about Data Engineering, Data Warehousing, and Advanced Analytics. This project showcases my hands-on experience in building scalable SQL architecture and extracting business value from multi-source datasets.

⭐ If you find this repository useful or inspiring, please give it a Star!
