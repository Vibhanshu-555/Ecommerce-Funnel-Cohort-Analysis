# Funnel Analysis

## Objective
Analyze the user journey through the e-commerce funnel (View → Cart → Purchase) to identify drop-offs, conversion rates, and opportunities for optimization.

---

## Input
- Cleaned dataset: `events_cleaned_final.csv` (data/cleaned/)

---

## Output Tables / CSVs

| File Name | Description |
|-----------|-------------|
| `event_count.csv` | Counts of each event type per user, used to build the overall funnel. |
| `user_funnel.csv` | Aggregated funnel metrics at the user level. |
| `funnel_category.csv` | Funnel metrics aggregated by product category. |
| `funnel_brand.csv` | Funnel metrics aggregated by brand. |

---

## Key Metrics / Insights

### 1. Overall Funnel (Unique Users)
- **Total users:** 1000,000  
- **Users who viewed products:** 585,928  
- **Users who added to cart:** 20,199 (~3.45% of viewers)  
- **Users who purchased:** 16,268 (~2.78% of viewers)  
- **Observation:** Majority of users only view products; the largest drop-off occurs at the “Add to Cart” stage, highlighting a potential UX or marketing improvement area.

### 2. User-Level Conversion
- Cart → Purchase conversion is high (~80.54%), showing strong purchase intent once items are added to the cart.  
- View → Purchase conversion is low (~2.78%), emphasizing that most users browse without taking further action.

### 3. Funnel by Category
- **Top converting categories (View → Purchase %):**
  - Electronics: 3.65%  
  - Appliances: 2.18%  
  - Medicines: 1.85%  
- **Low conversion categories:** Apparel (0.52%), Country Yard (0.66%)  
- **Recommendation:** Focus marketing on categories with high traffic but low conversion.

### 4. Funnel by Brand (Top 15)
- **Top performers:** Samsung, Apple, Xiaomi  
- **View → Purchase %:** 2.34–4.18%  
- **Cart → Purchase %:** 51–99%, indicating strong intent after adding to cart.  
- Brands with missing data (“unknown”) and anomalous conversions were excluded.  

### 5. General Observations
- The largest drop-off occurs at the **Add to Cart stage** across most categories and brands.  
- Focus on **cart reminders, promotions, and UX improvements** to increase View → Cart conversion.  
- Checkout flow is not a major bottleneck as most users who add to cart complete the purchase.

---

## SQL Reference
All queries used to generate these outputs are in the [`/sql/funnel_analysis`](../../sql/funnel_analysis) folder.

---

## Notes for Visualization
- Final dashboard shows **overall funnel chart** with user counts across events (View → Cart → Purchase).  
- Category and brand funnel charts can include **drop-off percentages** for visual storytelling.
