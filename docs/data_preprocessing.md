# Data Preprocessing

## Raw Data
- Source: Kaggle e-commerce dataset  
- Original size: ~1 million rows sampled from the full dataset  
- Stored in: `data/raw/`

## Steps
1. **Sampling:** Reduce dataset to manageable size for faster processing.  
2. **Cleaning:**  
   - Remove duplicates  
   - Handle missing or unknown values  
   - Standardize category and brand names  
   - Ensure timestamp formats consistent  
3. **Output:**  
   - Intermediate cleaned tables for analysis  
   - Final cleaned table: `events_cleaned_final.csv` stored in `data/cleaned/`

## Notes
- All cleaned data used as input for SQL analyses and Tableau visualizations.  
- Data dictionaries for raw and cleaned tables are in `results/data_dictionary.md`.
