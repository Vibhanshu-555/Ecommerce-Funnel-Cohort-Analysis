# Cohort Analysis

## Objective
Analyze user retention by grouping users into cohorts based on their first activity and tracking their repeat engagement over time (Day 1 → Day 30).

---

## Tables / CSVs

| File Name | Description |
|-----------|-------------|
| `user_cohort.csv` | Assigns each user to a cohort based on their first event. |
| `cohort_retention.csv` | Counts of retained users per cohort over time. |
| `cohort_retention_pct.csv` | Retention percentages per cohort over time. |

---

## Key Metrics / Insights
- Day 1 retention rate: **3.01%**  
- Day 7 retention rate: **1.25%**  
- Day 30 retention rate: **0.04%**  
- The largest drop-off occurs on **Day 1**, indicating early churn risk.


---

## SQL Reference
All queries used to generate these outputs are in the [`/sql/cohort_analysis`](../../sql/cohort_analysis) folder.

---

## Notes
- Derived from the cleaned dataset: `events_cleaned_final.csv`.  
- These tables are used to generate the user retention cohort visualization in the Tableau dashboard.
