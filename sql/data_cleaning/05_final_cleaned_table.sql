-- Brick 7.4: Split category_code hierarchy
-- Create a table with main, sub1, sub2 categories

CREATE OR OR REPLACE TABLE `infra-throne-471611-v9.ecommerce_analytics.events_clean_final` AS
SELECT 
    *,
    SPLIT(category_code, ".")[OFFSET(0)] AS main_category,
    SPLIT(category_code, ".")[OFFSET(1)] AS sub_category1,
    SPLIT(category_code, ".")[OFFSET(2)] AS sub_category2
FROM `infra-throne-471611-v9.ecommerce_analytics.events_clean_step3`;
