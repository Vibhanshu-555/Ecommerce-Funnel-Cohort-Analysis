# Data Dictionary

## Dataset: raw_ecommerce_sampled.csv
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
