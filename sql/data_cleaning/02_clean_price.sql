-- Create a new table events_clean_step1 with price > 0

CREATE OR REPLACE TABLE `infra-throne-471611-v9.ecommerce_analytics.events_clean_step1` AS
SELECT *
FROM `infra-throne-471611-v9.ecommerce_analytics.events_staging`
WHERE price > 0;

--Sanity Checks
SELECT 
  COUNT(*) AS total_rows,
  COUNTIF(price = 0) AS zero_price,
  MIN(price) AS min_price,
  MAX(price) AS max_price
FROM `infra-throne-471611-v9.ecommerce_analytics.events_clean_step1`;