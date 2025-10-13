# Cohort Analysis

## Objective
Understand user retention patterns by grouping users into cohorts based on their first activity date and tracking how many return over time (Day 1 → Day 30).

---

## Input
- Cleaned dataset: `events_cleaned_final.csv` (data/cleaned/)

---

## Output Tables / CSVs

| File Name | Description |
|-----------|-------------|
| `user_cohort.csv` | Maps each user to a cohort based on their first event date. |
| `cohort_retention.csv` | Retained user counts per cohort across subsequent days. |
| `cohort_retention_pct.csv` | Percentage of users retained in each cohort across Day 1–30. |

---

## Key Metrics / Insights

### 1. Overall Retention
- **Day 1 Retention:** ~3.01%  
- **Day 7 Retention:** ~1.25%  
- **Day 30 Retention:** ~0.04%  
- **Observation:** Rapid early drop-off — a typical pattern for e-commerce behavior, indicating low long-term engagement after initial activity.

### 2. Cohort Behavior
- Users acquired on high-traffic days (e.g., weekends or campaign periods) show slightly **higher early retention (Day 1–3)**.  
- Retention stabilizes after Day 10 for most cohorts, implying the remaining users are **repeat or loyal buyers**.

### 3. Insights & Recommendations
- Focus on **post-purchase engagement campaigns** within the first 3 days.  
- Offer incentives or reminders to encourage second interactions.  
- Identify high-retention cohorts and study their acquisition channels.

---

## SQL Reference
All queries used to generate these outputs are located in the [`/sql/cohort_analysis`](../../sql/cohort_analysis) folder.

---

## Notes for Visualization
- Tableau dashboard visualizes **user retention (Day 1 → Day 30)** as a heatmap using `cohort_retention_pct.csv`.  
- Each row represents a **user cohort**, and each column represents **days since first activity**.  
- Darker shades indicate higher retention, enabling quick pattern recognition.
