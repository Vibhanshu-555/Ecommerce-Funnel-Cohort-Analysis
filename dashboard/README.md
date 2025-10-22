# Tableau Dashboard

This folder provides access to the final e-commerce analytics dashboard.

## Access

- **Interactive Dashboard (Recommended):**  
  [View on Tableau Public](https://public.tableau.com/shared/RFZPBK4Y5?:display_count=n&:origin=viz_share_link)  

## Dashboard Elements and Source Data

This table shows which dataset was used for each element of the Tableau dashboard.

| Dashboard Element | Dataset Used |
|------------------|-------------|
| User Funnel (across events) | `event_count.csv` |
| User Retention Cohort (Day 1–30) | `cohort_retention_pct.csv` |
| Category Revenue vs Average Order Value (bar-line) | `revenue_by_category.csv` |
| Top Brands by Revenue (horizontal bar) | `revenue_by_brand.csv` |
| Top 10 Products by View-to-Purchase Conversion | `top50_products.csv` |
| KPI Cards (Total Purchases & Overall Conversion) | `event_count.csv` |

**Notes:**
- For individual chart details and insights, see the [`/visuals/`](../visuals/) folder and [`/results/`](../results/) markdowns.
- This mapping ensures transparency in how each visualization was created and allows replication of the charts.
