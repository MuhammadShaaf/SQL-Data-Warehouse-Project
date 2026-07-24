<div align="center">

# 🚀 END-TO-END DATA WAREHOUSE & ANALYTICS PROJECT
### *A Production-Grade T-SQL Solution using Medallion Architecture & Advanced Analytics*

---

</div>

## 📌 Project Overview

Welcome to the **End-to-End Data Warehouse & Analytics Project**!

This repository demonstrates the complete lifecycle of an enterprise-grade data warehouse solution built with **Microsoft SQL Server**. The project models multi-source datasets (**CRM** and **ERP**) using the industry-standard **Medallion Architecture** and performs advanced business intelligence analysis ranging from Exploratory Data Analysis (EDA) to RFM segmentation and customer/product 360 reporting.

---

## 🏗️ Data Architecture (Medallion Pattern)

The data warehouse transforms raw operational data into structured, business-ready analytics across three distinct layers:

* 🟤 **Bronze Layer (Raw Staging):** Ingests raw CSV source data from **CRM** and **ERP** systems into staging tables without schema or data modifications.
* ⚪ **Silver Layer (Cleansing & Standardization):** Handles missing values, deduplication, data type alignment, code standardization, and data quality enforcement.
* 🟡 **Gold Layer (Dimensional Modeling):** Builds an optimized **Star Schema** with Fact and Dimension views designed for analytical queries and BI reporting.

---

## 📁 Repository Structure

* 📂 **`datasets/`** — Raw CSV files representing source systems (CRM & ERP)
* 📂 **`docs/`** — Architecture diagrams, data dictionary, and naming conventions
* 📂 **`scripts/`** — Data Engineering & Analytics T-SQL scripts
  * 📁 **`bronze/`** — Data Definition Language (DDL) & ingestion stored procedures
  * 📁 **`silver/`** — Data cleansing, transformation, and load procedures
  * 📁 **`gold/`** — Star Schema creation scripts (Facts & Dimensions)
  * 📁 **`01_eda/`** — Exploratory Data Analysis scripts
  * 📁 **`02_analytics/`** — Advanced SQL business analytics scripts
  * 📁 **`03_reports/`** — Executive customer and product reporting views
  * 📄 **`init_database.sql`** — Database initialization script
* 📂 **`tests/`** — Data quality assertion tests and schema validation scripts
* 📄 **`README.md`** — Repository documentation

---

## 📊 Analytics & Insights Capabilities

The analytics suite converts transformed data warehouse tables into actionable business intelligence across three core stages:

### 🔍 1. Exploratory Data Analysis (EDA)
* **Schema Verification:** Table structure checks, data type audits, and row count checks.
* **Dimensional Distribution:** Attribute frequency, unique value counts, and categorical breakdowns.
* **Temporal Auditing:** Date range boundaries, transaction volume trends, and missing date checks.
* **Measures Evaluation:** Statistical summaries (min, max, mean, sum) across key numeric fields.

### 📈 2. Advanced SQL Analytics
* **Ranking & Performance:** Identifying top-performing products and high-value customers using window functions (`DENSE_RANK()`, `ROW_NUMBER()`).
* **Time-Series Analysis:** Period-over-period performance tracking including Year-over-Year (YoY) and Month-over-Month (MoM) growth.
* **Cumulative Metrics:** Calculating running revenue totals, cumulative margins, and moving averages.
* **Customer Segmentation (RFM):** Categorizing customer behavior using Recency, Frequency, and Monetary parameters.
* **Part-to-Whole Analysis:** Evaluating category and product percentage contributions to overall enterprise revenue.

### 📄 3. Executive Reporting Views
* 👤 **Customer 360 View (`12_report_customers.sql`):** Consolidates Lifetime Value (LTV), total order frequency, average order value (AOV), and recency scores into a unified view.
* 📦 **Product Performance View (`13_report_products.sql`):** Aggregates revenue, order volume, total quantity sold, profit margins, and sales ranking per product category.

---

## 🛠️ Tech Stack & Tools

* 🗄️ **Database Engine:** Microsoft SQL Server (T-SQL)
* 💻 **IDE:** SQL Server Management Studio (SSMS)
* 📐 **Architecture:** Medallion Architecture (Bronze, Silver, Gold Layers)
* 📊 **Data Modeling:** Dimensional Modeling (Star Schema)
* 🔧 **Version Control:** Git & GitHub

---

## 🚀 Getting Started

1. **Clone the repository:**
   `git clone https://github.com/MuhammadShaaf/SQL-Data-Warehouse-Project.git`

2. **Initialize the Database:**
   Open SSMS and execute `scripts/init_database.sql` to establish the database and schemas.

3. **Execute ETL Pipelines:**
   Run the stored procedures inside `scripts/bronze/` and `scripts/silver/` to populate and transform the data.

4. **Build Gold Layer:**
   Run scripts in `scripts/gold/` to construct the star schema views.

5. **Run Analytics:**
   Execute scripts in `scripts/01_eda/`, `scripts/02_analytics/`, and `scripts/03_reports/` to generate insights.

---

## 🌟 About Me

Hi there! 👋 I'm **Muhammad Shaaf**.

I am passionate about **Data Engineering**, **Data Warehousing**, and **Advanced Analytics**. This project demonstrates my hands-on ability to architect scalable SQL databases, clean multi-source enterprise data, and deliver actionable insights through SQL analytics.

⭐ If you find this project valuable or inspiring, please consider giving it a **Star**!
