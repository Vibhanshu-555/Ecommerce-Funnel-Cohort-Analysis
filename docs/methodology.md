# Methodology

## Project Objective
Analyze e-commerce user behavior to identify conversion bottlenecks, retention patterns, and top-performing products and categories.

## Approach
1. **Data Collection:**  
   - Original dataset downloaded from Kaggle (~1 million rows sampled from full dataset).  
   - Stored in `data/raw/`.

2. **Data Cleaning:**  
   - Removed duplicates, handled missing values, standardized categories.  
   - Cleaned tables stored in `data/cleaned/`.  
   - Generated `events_cleaned_final.csv` as the master dataset.

3. **Analysis Modules:**  
   - **Funnel Analysis:** Track user flow (View → Cart → Purchase).  
   - **Cohort Analysis:** Retention by cohort (Day 1 → Day 30).  
   - **Product & Category Insights:** Revenue, conversion, top brands, top products.

4. **Visualization:**  
   - Tableau dashboards built to display insights interactively.  
   - Charts are available in `/visuals/`.  

---

## Key Deliverables
- Cleaned datasets (`events_cleaned_final.csv`)  
- SQL scripts for all analyses (`/sql/`)  
- Results CSVs and markdown summaries (`/results/`)  
- Interactive Tableau dashboard (`/dashboards/`)  
- Portfolio-ready documentation (`/docs/`)
