# 📊 Sales Data Analysis Project  

## Project Overview  
This project demonstrates a complete data analytics workflow starting from raw sales data to generating actionable business insights through SQL data cleaning, transformation, and visualization in Tableau.  

The main goals were to:  
1. Import and explore raw sales data.  
2. Perform systematic data cleaning and preprocessing using SQL.  
3. Build a clean, analysis-ready dataset for downstream reporting.  
4. Conduct exploratory data analysis (EDA) with SQL queries.  
5. Create interactive dashboards in Tableau for business decision-making.  

This end-to-end pipeline reflects how real-world company data can be transformed into meaningful insights for stakeholders.  

---

## Project Structure  
- `Raw Sales Dataset.csv` → Original raw dataset  
- `Sales Analysis.sql` → SQL script for data cleaning, transformation, and analysis queries  
- `Clean Sales Dataset.csv` → Final cleaned dataset ready for visualization  
- `Tableau Work.twbx` → Tableau workbook with dashboards and visualizations  
- `Tableau Dashboard 1.png` → Tableau Visualization  
- `Tableau Dashboard 2.png` → Tableau Visualization  

---

## Data Cleaning & Transformation (SQL)  
Key steps performed in the SQL script:  

### Data Quality Checks  
- Counted total records  
- Checked for missing values and duplicates  

### Cleaning Rules Applied  
- Removed rows with negative/zero prices or quantities  
- Kept only completed (Shipped) orders  
- Standardized categorical values (e.g., `SHIPPED` → `Shipped`)  
- Trimmed extra spaces in text fields  

### Data Standardization  
- Renamed columns to a consistent format  
- Converted order dates into proper SQL DATE format  
- Truncated numeric values to 2 decimal places  

### Feature Engineering  
- Created a new field: `line_total_revenue = quantity × unit_price`  
- Added KPIs for total revenue, average order value, top customers, and best-selling product lines  

---

## Analysis Queries (SQL)  
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

## Visualization (Tableau)  
The cleaned dataset was imported into Tableau to create interactive dashboards:  
- **Sales Overview Dashboard** → Revenue, Orders, Customers, AOV  
- **Product Line Performance** → Best-selling categories by revenue  
- **Customer Insights** → Top customers ranked by sales  
- **Time-Series Analysis** → Monthly revenue trends across years  

These dashboards allow decision-makers to track company performance, identify growth areas, and understand customer behavior.  

---

## Skills Demonstrated  
- **SQL (MySQL):** Data cleaning, transformation, EDA queries  
- **Data Preprocessing:** Handling duplicates, missing values, inconsistent formats  
- **Tableau:** Building dashboards, visual storytelling, KPIs, and trend analysis  
- **Data Analytics Workflow:** End-to-end pipeline from raw data → cleaned dataset → insights  

---

# 📊 Vertriebsdaten-Analyseprojekt  

## Projektübersicht  
Dieses Projekt zeigt einen vollständigen Datenanalyse-Workflow – von Rohvertriebsdaten bis hin zu verwertbaren Geschäftseinblicken durch SQL-Datenbereinigung, Transformation und Visualisierung in Tableau.  

Die Hauptziele waren:  
1. Import und Exploration der Rohvertriebsdaten.  
2. Systematische Datenbereinigung und Vorverarbeitung mit SQL.  
3. Erstellung eines sauberen, analysefähigen Datensatzes für Reporting und Visualisierung.  
4. Durchführung explorativer Datenanalysen (EDA) mit SQL-Abfragen.  
5. Erstellung interaktiver Dashboards in Tableau zur Unterstützung geschäftlicher Entscheidungen.  

Dieser End-to-End-Prozess zeigt, wie reale Unternehmensdaten in aussagekräftige Erkenntnisse für Stakeholder transformiert werden können.  

---

## Projektstruktur  
- `Raw Sales Dataset.csv` → Ursprünglicher Rohdatensatz  
- `Sales Analysis.sql` → SQL-Skript für Datenbereinigung, Transformation und Analyseabfragen  
- `Clean Sales Dataset.csv` → Endgültig bereinigter Datensatz für die Visualisierung  
- `Tableau Work.twbx` → Tableau-Arbeitsmappe mit Dashboards und Visualisierungen  
- `Tableau Dashboard 1.png` → Tableau-Visualisierung  
- `Tableau Dashboard 2.png` → Tableau-Visualisierung  

---

## Datenbereinigung & Transformation (SQL)  
Wichtige Schritte im SQL-Skript:  

### Datenqualitätsprüfungen  
- Gesamtanzahl der Datensätze gezählt  
- Überprüfung auf fehlende Werte und Duplikate  

### Angewandte Bereinigungsregeln  
- Entfernen von Zeilen mit negativen/Null-Preisen oder -Mengen  
- Beibehalten nur abgeschlossener Bestellungen (Status: *Shipped*)  
- Vereinheitlichung kategorialer Werte (z. B. `SHIPPED` → `Shipped`)  
- Entfernen überflüssiger Leerzeichen in Textfeldern  

### Datenstandardisierung  
- Umbenennung der Spalten in ein einheitliches Format  
- Umwandlung von Bestelldaten in das SQL-DATE-Format  
- Rundung numerischer Werte auf 2 Dezimalstellen  

### Feature Engineering  
- Erstellung eines neuen Feldes: `line_total_revenue = quantity × unit_price`  
- Ergänzung wichtiger Kennzahlen (KPIs) für Gesamtumsatz, durchschnittlichen Bestellwert, Top-Kunden und umsatzstarke Produktlinien  

---

## Analyseabfragen (SQL)  
Wichtige geschäftliche Fragestellungen:  
- Gesamter Unternehmensumsatz  
- Umsatzstärkste Produktlinien  
- Top 5 Kunden nach Umsatzbeitrag  
- Zentrale Kennzahlen (KPIs):  
  - Gesamtanzahl Bestellungen  
  - Gesamtanzahl Kunden  
  - Gesamtumsatz  
  - Durchschnittlicher Bestellwert  
- Monatliche Umsatztrends im Zeitverlauf (Jahr & Monat)  

---

## Visualisierung (Tableau)  
Der bereinigte Datensatz wurde in Tableau importiert, um interaktive Dashboards zu erstellen:  
- **Sales Overview Dashboard** → Umsatz, Bestellungen, Kunden, AOV  
- **Product Line Performance** → Umsatzstärkste Kategorien  
- **Customer Insights** → Top-Kunden nach Umsatz  
- **Zeitreihenanalyse** → Monatliche Umsatztrends über mehrere Jahre  

Diese Dashboards ermöglichen es Entscheidungsträgern, die Unternehmensleistung zu überwachen, Wachstumschancen zu erkennen und das Kundenverhalten besser zu verstehen.  

---

## Nachgewiesene Fähigkeiten  
- **SQL (MySQL):** Datenbereinigung, Transformation, explorative Abfragen  
- **Datenvorbereitung:** Umgang mit Duplikaten, fehlenden Werten und inkonsistenten Formaten  
- **Tableau:** Erstellung von Dashboards, visuelles Storytelling, KPIs und Trendanalysen  
- **Datenanalyse-Workflow:** End-to-End-Prozess von Rohdaten → bereinigter Datensatz → Insights  

