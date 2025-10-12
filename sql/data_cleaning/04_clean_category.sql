-- Create a new table events_clean_step2 with cleaned brand

CREATE OR REPLACE TABLE `infra-throne-471611-v9.ecommerce_analytics.events_clean_step2` AS
SELECT 
    event_time,
    event_type,
    product_id,
    category_id,
    category_code,
    IFNULL(LOWER(brand), "unknown") AS brand,  -- replace NULL with 'unknown' & lowercase
    price,
    user_id,
    user_session
FROM `infra-throne-471611-v9.ecommerce_analytics.events_clean_step1`;


SELECT 
  COUNT(*) AS total_rows,
  COUNTIF(brand IS NULL) AS null_brand,
  COUNT(DISTINCT brand) AS unique_brands
FROM `infra-throne-471611-v9.ecommerce_analytics.events_clean_step2`;
