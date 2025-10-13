# Funnel Analysis

## Objective
Analyze the user journey through the e-commerce funnel (View → Cart → Purchase) to identify drop-off points and conversion rates.

---

## Tables / CSVs

| File Name | Description |
|-----------|-------------|
| `event_count.csv` | Counts of each event type per user. |
| `user_funnel.csv` | Aggregated funnel metrics at the user level. |
| `funnel_category.csv` | Funnel metrics aggregated by product category. |
| `funnel_brand.csv` | Funnel metrics aggregated by brand. |

---

## Key Metrics / Insights
- Overall conversion rate (view → purchase): **4.84%**  
- Category with highest purchase rate: **electronics**  
- Brand with highest cart-to-purchase conversion: **apple**  
- Users drop most between **view → cart** stage.  


---

## SQL Reference
All queries used to generate these outputs are in the [`/sql/funnel_analysis`](../../sql/funnel_analysis) folder.

---

## Notes
- These tables are derived from the cleaned dataset: `events_cleaned_final.csv`.
- All outputs are ready for visualization in the Tableau dashboard.
