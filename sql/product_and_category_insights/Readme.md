# Product & Category Insights

## Objective
Analyze product and category performance by revenue, conversion, and engagement metrics to identify top-performing products, brands, and categories.

---

## Tables / CSVs

| File Name | Description |
|-----------|-------------|
| `product_performance_summary.csv` | Aggregated metrics per product, including views, carts, purchases, and conversion rates. |
| `revenue_by_category.csv` | Revenue and average order value aggregated by category. |
| `revenue_by_brand.csv` | Revenue aggregated by brand. |
| `top50_products.csv` | Top 50 products ranked by view-to-purchase conversion rate. |

---

## Key Metrics / Insights
- Highest revenue category: **electronics**  
- Brand with highest total revenue: **apple**  
- Top product by view-to-purchase conversion: **Product Id-6201146**  
- Average order value across all categories: **$3,73,000**  


---

## SQL Reference
All queries used to generate these outputs are in the [`/sql/product_and_category_insights`](../../sql/product_and_category_insights) folder.

---

## Notes
- Derived from the cleaned dataset: `events_cleaned_final.csv`.  
- Tables are used to create the Tableau dashboard visualizations for top products, brands, and category revenue comparisons.

