--1. Check event_time
SELECT 
  MIN(event_time) AS min_time,
  MAX(event_time) AS max_time,
  COUNTIF(event_time IS NULL) AS null_time,
  COUNT(*) AS total_rows
FROM `infra-throne-471611-v9.ecommerce_analytics.events_staging`;

--2. Check event_type
SELECT 
  event_type, 
  COUNT(*) AS count, 
  ROUND(COUNT(*) * 100 / SUM(COUNT(*)) OVER (), 2) AS pct
FROM `infra-throne-471611-v9.ecommerce_analytics.events_staging`
GROUP BY event_type
ORDER BY count DESC;

--3. Unique Products
SELECT 
  COUNT(*) AS total_rows,
  COUNT(DISTINCT product_id) AS unique_products,
  COUNTIF(product_id IS NULL) AS null_products
FROM `infra-throne-471611-v9.ecommerce_analytics.events_staging`;

--4. Check Category
SELECT 
  COUNT(DISTINCT category_id) AS unique_categories,
  COUNTIF(category_id IS NULL) AS null_categories,
  COUNTIF(category_id = '') AS blank_categories
FROM `infra-throne-471611-v9.ecommerce_analytics.events_staging`;

--5. Category Code
SELECT 
  COUNT(*) AS total,
  COUNTIF(category_code IS NULL) AS null_code,
  COUNTIF(category_code = '') AS blank_code,
  COUNT(DISTINCT category_code) AS unique_codes
FROM `infra-throne-471611-v9.ecommerce_analytics.events_staging`;

SELECT DISTINCT category_code 
FROM `infra-throne-471611-v9.ecommerce_analytics.events_staging`
WHERE category_code IS NOT NULL
LIMIT 10;

--6. Brands
SELECT 
  COUNT(*) AS total,
  COUNTIF(brand IS NULL) AS null_brand,
  COUNTIF(brand = '') AS blank_brand,
  COUNT(DISTINCT brand) AS unique_brands
FROM `infra-throne-471611-v9.ecommerce_analytics.events_staging`;

SELECT brand, COUNT(*) AS cnt
FROM `infra-throne-471611-v9.ecommerce_analytics.events_staging`
GROUP BY brand
ORDER BY cnt DESC
LIMIT 10;

--7. Price
SELECT 
  COUNT(*) AS total,
  COUNTIF(price IS NULL) AS null_price,
  COUNTIF(price = 0) AS zero_price,
  COUNTIF(price < 0) AS negative_price,
  MIN(price) AS min_price,
  MAX(price) AS max_price
FROM `infra-throne-471611-v9.ecommerce_analytics.events_staging`;

--8. User
SELECT 
  COUNT(*) AS total_rows,
  COUNT(DISTINCT user_id) AS unique_users,
  COUNTIF(user_id IS NULL) AS null_users
FROM `infra-throne-471611-v9.ecommerce_analytics.events_staging`;

--9. User Session
SELECT 
  COUNT(*) AS total_rows,
  COUNT(DISTINCT user_session) AS unique_sessions,
  COUNTIF(user_session IS NULL) AS null_sessions
FROM `infra-throne-471611-v9.ecommerce_analytics.events_staging`;

