SELECT
  brand,
  COUNTIF(event_type='purchase') AS purchases,
  SUM(price) AS total_revenue,
  SAFE_DIVIDE(SUM(price), COUNTIF(event_type='purchase')) AS avg_order_value,
  SAFE_DIVIDE(SUM(price), SUM(SUM(price)) OVER()) * 100 AS share_of_revenue_pct
FROM `infra-throne-471611-v9.ecommerce_analytics.events_clean_final`
WHERE event_type='purchase'
  AND brand IS NOT NULL
  AND brand != 'unknown'
GROUP BY brand
ORDER BY total_revenue DESC
LIMIT 20;
