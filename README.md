# 📊 Sales Data Analysis Project

## 📌 Project Overview
This project demonstrates a complete data analytics workflow starting from raw sales data to generating actionable business insights through SQL data cleaning, transformation, and visualization in Tableau.  

The main goals were to:  
1. Import and explore raw sales data.  
2. Perform systematic data cleaning and preprocessing using SQL.  
3. Build a clean, analysis-ready dataset for downstream reporting.  
4. Conduct exploratory data analysis (EDA) with SQL queries.  
5. Create interactive dashboards in Tableau for business decision-making.  

This end-to-end pipeline reflects how real-world company data can be transformed into meaningful insights for stakeholders.  

---

## 📂 Project Structure
- `Raw Sales Dataset.csv` → Original raw dataset  
- `Sales Analysis.sql` → SQL script for data cleaning, transformation, and analysis queries  
- `Clean_Sales.csv` → Final cleaned dataset ready for visualization  
- `Tableau Work.twbx` → Tableau workbook with dashboards and visualizations  

---

## 🧹 Data Cleaning & Transformation (SQL)
Key steps performed in the SQL script:  

### 🔍 Data Quality Checks  
- Counted total records  
- Checked for missing values and duplicates  

### 🧼 Cleaning Rules Applied  
- Removed rows with negative/zero prices or quantities  
- Kept only completed (Shipped) orders  
- Standardized categorical values (e.g., `SHIPPED` → `Shipped`)  
- Trimmed extra spaces in text fields  

### 📏 Data Standardization  
- Renamed columns to a consistent format  
- Converted order dates into proper SQL DATE format  
- Truncated numeric values to 2 decimal places  

### ⚙️ Feature Engineering  
- Created a new field: `line_total_revenue = quantity × unit_price`  
- Added KPIs for total revenue, average order value, top customers, and best-selling product lines  

---

## 📊 Analysis Queries (SQL)
Some key business questions addressed:  
- Total company revenue  
- Best-selling product lines  
- Top 5 customers by revenue contribution  
- Key performance indicators (KPIs):  
  - Total Orders  
  - Total Customers  
  - Total Revenue  
  - Average Order Value  
- Monthly sales trends over time (Year & Month)  

---

## 📈 Visualization (Tableau)
The cleaned dataset was imported into Tableau to create interactive dashboards:  
- **Sales Overview Dashboard** → Revenue, Orders, Customers, AOV  
- **Product Line Performance** → Best-selling categories by revenue  
- **Customer Insights** → Top customers ranked by sales  
- **Time-Series Analysis** → Monthly revenue trends across years  

These dashboards allow decision-makers to track company performance, identify growth areas, and understand customer behavior.  

---

## 🛠 Skills Demonstrated
- **SQL (MySQL):** Data cleaning, transformation, EDA queries  
- **Data Preprocessing:** Handling duplicates, missing values, inconsistent formats  
- **Tableau:** Building dashboards, visual storytelling, KPIs, and trend analysis  
- **Data Analytics Workflow:** End-to-end pipeline from raw data → cleaned dataset → insights  
