SELECT
  product_id,
  brand,
  main_category,
  COUNTIF(event_type='view') AS views,
  COUNTIF(event_type='cart') AS carts,
  COUNTIF(event_type='purchase') AS purchases,
  SAFE_DIVIDE(COUNTIF(event_type='cart'), COUNTIF(event_type='view'))*100 AS conv_view_to_cart_pct,
  SAFE_DIVIDE(COUNTIF(event_type='purchase'), COUNTIF(event_type='cart'))*100 AS conv_cart_to_purchase_pct,
  SAFE_DIVIDE(COUNTIF(event_type='purchase'), COUNTIF(event_type='view'))*100 AS conv_view_to_purchase_pct
FROM `infra-throne-471611-v9.ecommerce_analytics.events_clean_final`
WHERE main_category IS NOT NULL
  AND main_category != 'unknown_category'
  AND brand IS NOT NULL
  AND brand != 'unknown'
GROUP BY product_id, brand, main_category
HAVING views >= 10
ORDER BY conv_view_to_purchase_pct DESC
LIMIT 50;