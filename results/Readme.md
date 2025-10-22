# Results Overview

This folder contains all the output data and analysis results generated from the e-commerce analytics project.  
It is organized by analysis module, with each subfolder containing CSV outputs and a corresponding markdown summary.

---

## Folder Structure

| Subfolder | Description |
|-----------|-------------|
| `funnel_analysis/` | Contains CSVs and markdown summarizing user funnel metrics (View → Cart → Purchase). |
| `cohort_analysis/` | Contains CSVs and markdown summarizing cohort-based retention and user engagement over time. |
| `product_and_category_insights/` | Contains CSVs and markdown summarizing product and category-level KPIs, top products, and revenue insights. |

---

## How to Explore

1. Open the **CSV files** in any spreadsheet tool or Python/R environment to inspect raw numbers.  
2. Each subfolder includes a **markdown summary (`*.md`)** with:  
   - Objective of the analysis  
   - Input tables used  
   - Output CSVs  
   - Key metrics and insights  
   - Reference to the SQL scripts that generated the results  

---

## Notes

- All results are derived from the cleaned dataset: [`data/cleaned/05_final_cleaned_table.csv`](../data/cleaned/05_final_cleaned_table.csv).  
- The markdown summaries provide context for the Tableau dashboard visualizations.  
- This folder is **read-only** and intended for reference; SQL scripts and dashboards are in [`/sql/`](../sql/) and [`/dashboards/`](../dashboards/).

---

**Author:** Vibhanshu Dubey

**Repository:** [ecommerce-analytics-sql-dashboard](https://github.com/Vibhanshu-555/ecommerce-analytics-sql-dashboard)
