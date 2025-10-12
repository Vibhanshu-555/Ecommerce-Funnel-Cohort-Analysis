-- Brick 7.3: Category Code Cleaning
-- Create a new table events_clean_step3 with cleaned category_code

CREATE OR REPLACE TABLE `infra-throne-471611-v9.ecommerce_analytics.events_clean_step3` AS
SELECT 
    event_time,
    event_type,
    product_id,
    category_id,
    IFNULL(category_code, "unknown_category") AS category_code,  -- fill missing
    brand,
    price,
    user_id,
    user_session
FROM `infra-throne-471611-v9.ecommerce_analytics.events_clean_step2`;
