# 📊 Sales Data Analysis Project

## Project Overview
This project demonstrates a complete data analytics workflow starting from raw sales data to generating actionable business insights through SQL data cleaning, transformation, and visualization in Tableau.

The goal of this project was to:
1. Import and explore raw sales data.
2. Perform systematic data cleaning and preprocessing using SQL.
3. Build a clean, analysis-ready dataset for downstream reporting.
4. Conduct exploratory data analysis (EDA) with SQL queries.
5. Create interactive dashboards in Tableau for business decision-making.

This end-to-end pipeline reflects how real-world company data can be transformed into meaningful insights for stakeholders.

---

## Project Structure
- `sales_data_sample.csv` → Original raw dataset  
- `Sales Analysis.sql` → SQL script for data cleaning, transformation, and analysis queries  
- `Clean_Sales.csv` → Final cleaned dataset ready for visualization  
- `Tableau Work.twbx` → Tableau workbook with dashboards and visualizations  

---

## Data Cleaning & Transformation (SQL)
**Key steps performed in the SQL script:**  
- **Data Quality Checks:** counted total records, checked missing values and duplicates  
- **Cleaning Rules Applied:** removed rows with negative/zero values, kept only completed orders, standardized categorical values, trimmed extra spaces  
- **Data Standardization:** renamed columns, converted dates to proper SQL `DATE`, truncated numeric values  
- **Feature Engineering:** created `line_total_revenue = quantity × unit_price`, added KPIs for revenue, AOV, top customers, product lines  

---

## Analysis Queries (SQL)
Some key business questions addressed:
- Total Company Revenue  
- Best-Selling Product Lines  
- Top 5 Customers by Revenue Contribution  
- KPIs: Total Orders, Total Customers, Total Revenue, Average Order Value  
- Monthly Sales Trends (Year & Month)  

---

## Visualization (Tableau)
Interactive dashboards created to showcase:
- **Sales Overview Dashboard:** Revenue, Orders, Customers, AOV  
- **Product Line Performance:** Best-selling categories  
- **Customer Insights:** Top customers by sales  
- **Time-Series Analysis:** Monthly revenue trends  

These dashboards allow decision-makers to track company performance, identify growth areas, and understand customer behavior.

---

## Skills Demonstrated
- SQL (MySQL): Data cleaning, transformation, EDA queries  
- Data Preprocessing: Handling duplicates, missing values, inconsistent formats  
- Tableau: Building dashboards, storytelling, KPIs, trend analysis  
- Data Analytics Workflow: End-to-end pipeline from raw data → cleaned dataset → insights  


---

# 📊 Vertriebsdaten-Analyseprojekt

## Projektübersicht
Dieses Projekt demonstriert einen vollständigen Datenanalyse-Workflow – von Rohdaten bis hin zu geschäftsrelevanten Erkenntnissen – durch Datenbereinigung, Transformation in SQL und Visualisierung in Tableau.

Ziele des Projekts:
1. Import und Exploration von Rohdaten  
2. Systematische Datenbereinigung und -vorverarbeitung in SQL  
3. Aufbau eines bereinigten, analysefähigen Datensatzes für das Reporting  
4. Durchführung explorativer Datenanalysen (EDA) mit SQL-Abfragen  
5. Erstellung interaktiver Dashboards in Tableau für Geschäftsentscheidungen  

Dieser End-to-End-Prozess zeigt, wie Unternehmensdaten in wertvolle Erkenntnisse umgewandelt werden können.

---

## Projektstruktur
- `sales_data_sample.csv` → Ursprünglicher Rohdatensatz  
- `Sales Analysis.sql` → SQL-Skript zur Datenbereinigung, Transformation und Analyseabfragen  
- `Clean_Sales.csv` → Bereinigter Datensatz für die Visualisierung  
- `Tableau Work.twbx` → Tableau-Workbook mit Dashboards und Visualisierungen  

---

## Datenbereinigung & Transformation (SQL)
**Wichtige Schritte im SQL-Skript:**  
- **Datenqualitätsprüfungen:** Zählen von Datensätzen, Überprüfung auf fehlende Werte und Duplikate  
- **Bereinigungsregeln:** Entfernen ungültiger Werte (Preis/Menge ≤ 0), nur abgeschlossene Bestellungen behalten, Standardisierung von Statuswerten, Entfernen von Leerzeichen  
- **Datenstandardisierung:** Umbenennen von Spalten, Umwandeln von Datumswerten in SQL-`DATE`, Rundung von Zahlen auf 2 Dezimalstellen  
- **Feature Engineering:** Erstellung von `line_total_revenue = quantity × unit_price`, Hinzufügen von KPIs (Umsatz, AOV, Top-Kunden, Produktlinien)  

---

## Analyseabfragen (SQL)
Beantwortete Geschäftsfragen:
- Gesamtumsatz des Unternehmens  
- Erfolgreichste Produktlinien  
- Top 5 Kunden nach Umsatzbeitrag  
- KPIs: Gesamtbestellungen, Kundenanzahl, Umsatz, durchschnittlicher Bestellwert  
- Monatliche Umsatzentwicklung (Jahr & Monat)  

---

## Visualisierung (Tableau)
Interaktive Dashboards zeigen:
- **Sales Overview Dashboard:** Umsatz, Bestellungen, Kunden, AOV  
- **Produktlinien-Performance:** Erfolgreichste Kategorien  
- **Kundenanalyse:** Top-Kunden nach Umsatz  
- **Zeitreihenanalyse:** Monatliche Umsatztrends  

Diese Dashboards helfen Entscheidungsträgern, die Unternehmensleistung zu überwachen, Wachstumsbereiche zu identifizieren und das Kundenverhalten zu verstehen.

---

## Verwendete Fähigkeiten
- SQL (MySQL): Datenbereinigung, Transformation, EDA-Abfragen  
- Datenvorverarbeitung: Umgang mit Duplikaten, fehlenden Werten, inkonsistenten Formaten  
- Tableau: Erstellung von Dashboards, Storytelling, KPIs, Trendanalysen  
- Datenanalyse-Workflow: End-to-End-Prozess von Rohdaten → bereinigter Datensatz → Erkenntnisse  
