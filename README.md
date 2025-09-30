# Telco Customer Churn — Executive Analysis & Drill-Down

## One-line summary:
- Analysis of Telco customer churn to identify highest-risk cohorts and estimate revenue impact of targeted retention actions. 
- Workflow: SQL (cleaning + KPI extraction) → Excel (pivot & scenario modeling) → Tableau (executive + drill-down dashboards).

## TL;DR 
- Overall churn rate: **26.58%**.  
- Highest-risk cohort: **Month-to-month contract** (churn **42.71%**) — primary action target.  
- Estimated annual lost revenue: **₹1,669,570**.
- Scenario modeling shows that reducing overall churn by 5% could have a net impact(profit) of ~**₹105,510** annually. (See `Churn_Analysis_Portfolio.xlsx`).

## Repo contents
See folder list in project brief — main items:
- data/
- churn_overall.csv                   (Overall Churn Rate export from SQL)
- churn_by_gender.csv                 (SQL export: churn by gender)
- churn_by_contract.csv               (SQL export: churn by contract)  <-- sample provided
- churn_by_tenure_band.csv            (SQL export: churn by tenure bands)
- churn_by_payment.csv                (SQL export: churn by payment method)
- churn_by_charge_band.csv            (SQL export: churn by charge band)
- cleaned/cleaned_dataset.csv         (cleaned dataset; 7032 rows)
-  
- sql/
- 01_extract_raw.sql
- 02_cleaning_steps.sql
- churn_overall.sql               (queries used to produce the overall churn rate csv)
- (queries used to produce churn rate in various drivers - tenureband, gender, payment,contract, monthly charges).
- churn_tenureband.sql            
- churn_gender.sql                 
- churn_payment.sql                
- churn_contract.sql               
- churn_charges.sql             
-  
- excel/
- Churn_Analysis_Portfolio.xlsx   (KPIs + quick pivots + scenario modeling)
-        
- tableau/
- screenshots/
- executive_screenshot.png
- drilldown_screenshot.png
- tableau_public_links.md
-       
- docs/
- Customer Churn - Executive Summary.pdf       (one-page executive summary)

## How I approached this
1. Import raw CSV to MySQL using MySQL Workbench import wizard → churn.book table.
2. Verified raw import (sql/01_extract_raw.sql) — basic counts and sample rows.
3. Created cleaned_dataset via SQL (sql/02_cleaning_steps.sql) — removed NULL/blank/'null' MonthlyCharges, validated numeric casts, saved     cleaned table (7032 rows). Exported cleaned CSV for downstream work.
4. Extracted first-pass KPIs with SQL — churn breakdowns by contract, gender, tenure bands, payment method, charge band and overall. Exported each result into data/churn_*.csv (separate for each).
5. Built Excel pivots & scenario models (excel/Churn_Analysis_Portfolio.xlsx.xlsx) using the SQL-exported CSVs for rapid, auditable calculations.
6. Designed two Tableau dashboards (Executive + Drill-down) using cleaned_dataset for interactivity and storytelling; exported screenshots to tableau/screenshots/. Published interactive versions.

## Key findings & recommendations (short)
1. Month-to-month contracts show **42.71% churn** → prioritize retention and targeted offers.  
2. Electronic check payment shows the highest churn by payment method → consider billing engagement and automated reminders.  
3. Churn concentrated in early-tenure bands → focus early lifecycle onboarding & cross-sell programs.

## Reproduce / Run locally
- Data file: `data/cleaned/cleaned_dataset.csv` 
- Steps to reproduce SQL cleaning: run `sql/01_extract_raw.sql` then `sql/02_cleaning_steps.sql`.

## Limitations
- Raw CSV is not published in this repo due to privacy — contact me for the dataset.  

## Contact
Abhinav Saxena — [LinkedIn profile link] — [abhinavsaxena1609@gmail.com]

