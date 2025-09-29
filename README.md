# Telco Customer Churn — Executive Analysis & Drill-Down

One-line summary:
Analysis of Telco customer churn to identify highest-risk cohorts and estimate revenue impact of targeted retention actions. 
Tools: SQL → Excel → Tableau.

## TL;DR 
- Overall churn rate: **26.58%**.  
- Highest-risk cohort: **Month-to-month contract** (churn **42.71%**) — primary action target.  
- Estimated annual lost revenue: **₹1,669,570**. Scenario modeling shows that reducing month-to-month churn by 10% (relative) could save ~**₹128,694** annually. (See `Excel/Scenario_Impact.xlsx`).

## Repo contents
See folder list in project brief — main items:
- `data/cleaned/telco_churn_cleaned_7032.csv` — cleaned dataset (not published in this repo).  
- `sql/` — SQL queries used to extract & clean data (to be added - SQL scripts will be uploaded later).  
- `excel/Executive_Summary.xlsx` — pivot KPI workbook + scenario calculations.  
- `tableau/screenshots/` — PNGs of the Executive and Drill-down dashboards.  
- `docs/Executive_Summary.pdf` — one-page executive summary to download.

## How I approached this
1. Extracted raw tables via SQL (scripts will be added to `/sql/` once retrieved).  
2. Performed KPI calculations and scenario impact modeling in Excel (`excel/Scenario_Impact.xlsx`).  
3. Built two Tableau dashboards: Executive + Drill-down. Published interactive versions (links to be added in `tableau/tableau_public_links.md`).

## Key findings & recommendations (short)
1. Month-to-month contracts show **42.71% churn** → prioritize retention and targeted offers.  
2. Electronic check payment shows the highest churn by payment method — consider billing engagement and automated reminders.  
3. Scenario: a 10% relative reduction in month-to-month churn reduces annual lost revenue by **₹128,694** (see `excel/Scenario_Impact.xlsx` for sensitivity analysis).

## Reproduce / Run locally
- Data file: `data/cleaned/telco_churn_cleaned_7032.csv` (not included).  
- Requirements (if any notebooks): `pip install -r requirements.txt` (if Python notebooks used).  
- Steps to reproduce SQL cleaning: run `sql/01_extract_raw.sql` then `sql/02_cleaning_steps.sql` (scripts will be added).

## Limitations
- Cleaned CSV is not published in this repo due to file-size / privacy—contact me for the dataset.  
- Scenario estimates assume constant ARPU across cohorts (see `excel/Scenario_Impact.xlsx` for cohort-level sensitivity).

## Contact
Abhinav Saxena — [LinkedIn profile link] — [email address]

