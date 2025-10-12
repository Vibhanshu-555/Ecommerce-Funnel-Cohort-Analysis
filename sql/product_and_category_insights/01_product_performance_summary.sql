WITH product_events AS (
  SELECT
    product_id,
    ANY_VALUE(brand) AS brand,
    ANY_VALUE(main_category) AS main_category,
    COUNTIF(event_type = 'view') AS views,
    COUNTIF(event_type = 'cart') AS carts,
    COUNTIF(event_type = 'purchase') AS purchases
  FROM `infra-throne-471611-v9.ecommerce_analytics.events_clean_final`
  GROUP BY product_id
)

SELECT
  product_id,
  brand,
  main_category,
  views,
  carts,
  purchases,
  SAFE_DIVIDE(carts, views) * 100 AS view_to_cart_pct,
  SAFE_DIVIDE(purchases, carts) * 100 AS cart_to_purchase_pct,
  SAFE_DIVIDE(purchases, views) * 100 AS view_to_purchase_pct
FROM product_events
WHERE views > 0
ORDER BY views DESC
LIMIT 20;