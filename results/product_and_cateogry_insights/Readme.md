# Product & Category Insights

## Objective
Analyze product and category performance by revenue, conversion, and engagement metrics to identify top-performing products, brands, and categories.

---

## Input
- Cleaned dataset: `events_cleaned_final.csv` (data/cleaned/)

---

## Output Tables / CSVs

| File Name | Description |
|-----------|-------------|
| `product_performance_summary.csv` | Aggregated metrics per product, including views, carts, purchases, and conversion rates. |
| `revenue_by_category.csv` | Revenue and average order value aggregated by category. |
| `revenue_by_brand.csv` | Revenue aggregated by brand. |
| `top50_products.csv` | Top 50 products ranked by view-to-purchase conversion rate. |

---

## Key Metrics / Insights

### 1. Category Revenue vs. Average Order Value (AOV)
- Highest revenue category: **Electronics**  
- Category with highest AOV: **Computers**  
- Observation: Some categories generate moderate revenue but have high AOV, suggesting fewer purchases but higher per-order value.  

### 2. Top Brands by Revenue
- **Top performers:** Samsung, Apple, Xiaomi  
- Observation: High revenue aligns with high engagement and strong conversions.

### 3. Top 10 Products (View → Purchase Conversion)
- Highest converting product: **Product Id-6201146**  
- Observation: Products with high conversion often belong to top-selling brands or popular categories.  

### 4. KPI Cards
- **Total Purchases:** 16,268  
- **Overall Conversion (View → Purchase):** 2.78%  
- Observation: KPIs provide a quick snapshot of overall business performance.

---

## SQL Reference
All queries used to generate these outputs are located in the [`/sql/product_and_category_insights`](../../sql/product_and_category_insights) folder.

---

## Notes for Visualization
- Tableau dashboard visualizations:
  - **Bar-Line Chart:** Category revenue vs. AOV using `revenue_by_category.csv`  
  - **Horizontal Bar Chart:** Top brands by revenue using `revenue_by_brand.csv`  
  - **Horizontal Bar Chart:** Top 10 products by conversion using `top50_products.csv`  
  - **KPI Cards:** Total purchases and overall conversion using `product_performance_summary.csv`  
- These visuals allow quick identification of top-performing products, brands, and categories.
