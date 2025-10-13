# Analysis Workflow

This document describes the step-by-step analysis pipeline.

## 1. Funnel Analysis
- **Input:** `events_cleaned_final.csv`  
- **Tables generated:** `event_count`, `user_funnel`, `funnel_category`, `funnel_brand`  
- **Output:** CSVs and markdown in `/results/funnel_analysis/`  
- **Visualization:** User funnel across events (`/visuals/funnel_analysis/`)

## 2. Cohort Analysis
- **Input:** `events_cleaned_final.csv`  
- **Tables generated:** `user_cohort`, `cohort_retention`, `cohort_retention_pct`  
- **Output:** CSVs and markdown in `/results/cohort_analysis/`  
- **Visualization:** Retention heatmap (`/visuals/cohort_analysis/`)

## 3. Product & Category Insights
- **Input:** `events_cleaned_final.csv`  
- **Tables generated:** `product_performance_summary`, `revenue_by_category`, `revenue_by_brand`, `top50_products`  
- **Output:** CSVs and markdown in `/results/product_and_category_insights/`  
- **Visualization:** Category revenue vs AOV, top brands, top 10 products (`/visuals/product_and_category_insights/`)

## 4. Dashboard Integration
- Combined all charts into **Tableau dashboard**.  
- Dashboard elements linked to their respective result CSVs (see `dashboards/README.md` for mapping).  
