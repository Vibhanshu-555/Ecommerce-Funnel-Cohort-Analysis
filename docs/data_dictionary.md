# Data Dictionary

## Dataset: sample_2019-Oct_1M.csv
**Path:** data/raw/sample_2019-Oct_1M.csv

**Description:** Sampled raw dataset from Kaggle. No cleaning applied.

| Field Name      | Type       | Description                                   |
|-----------------|------------|-----------------------------------------------|
| event_time      | TIMESTAMP  | Timestamp of the event                         |
| event_type      | STRING     | Type of event (view, cart, purchase)          |
| product_id      | STRING     | Unique identifier for each product            |
| category_id     | STRING     | Product category ID                            |
| category_code   | STRING     | Product category code                           |
| brand           | STRING     | Product brand                                  |
| price           | NUMERIC    | Price of the product                           |
| user_id         | STRING     | Unique identifier for each user               |
| user_session    | STRING     | Session ID of the user                          |


## Dataset: 02_price_cleaning.csv, 03_brand_cleaning.csv, 04_category_cleaning
**Path:** data/cleaned/

**Description:** Intermediate Cleaned tables.

| Field Name      | Type       | Description                                   |
|-----------------|------------|-----------------------------------------------|
| event_time      | TIMESTAMP  | Timestamp of the event                         |
| event_type      | STRING     | Type of event (view, cart, purchase)          |
| product_id      | STRING     | Unique identifier for each product            |
| category_id     | STRING     | Product category ID                            |
| category_code   | STRING     | Product category code                           |
| brand           | STRING     | Product brand                                  |
| price           | NUMERIC    | Price of the product                           |
| user_id         | STRING     | Unique identifier for each user               |
| user_session    | STRING     | Session ID of the user                          |


## Dataset: 05_final_cleaned_table.csv
**Path:** data/cleaned/05_final_cleaned_table.csv

**Description:** Final Cleaned Table used for Analysis

| Field Name      | Type       | Description                                   |
|-----------------|------------|-----------------------------------------------|
| event_time      | TIMESTAMP  | Timestamp of the event                         |
| event_type      | STRING     | Type of event (view, cart, purchase)          |
| product_id      | STRING     | Unique identifier for each product            |
| category_id     | STRING     | Product category ID                            |
| category_code   | STRING     | Product category code                           |
| brand           | STRING     | Product brand                                  |
| price           | NUMERIC    | Price of the product                           |
| user_id         | STRING     | Unique identifier for each user               |
| user_session    | STRING     | Session ID of the user                          |
| main_category   | STRING     | Main product category                          |
| sub_category1   | STRING     | First sub-category                             |
| sub_category2   | STRING     | Second sub-category                             |

