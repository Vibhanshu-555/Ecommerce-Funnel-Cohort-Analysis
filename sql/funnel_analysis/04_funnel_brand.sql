WITH brand_user_events AS (
    SELECT
        user_id,
        brand,
        MAX(CASE WHEN event_type = 'view' THEN 1 ELSE 0 END) AS viewed,
        MAX(CASE WHEN event_type = 'cart' THEN 1 ELSE 0 END) AS added_to_cart,
        MAX(CASE WHEN event_type = 'purchase' THEN 1 ELSE 0 END) AS purchased
    FROM
        infra-throne-471611-v9.ecommerce_analytics.events_clean_final
    WHERE
        brand IS NOT NULL AND brand != 'unknown'
    GROUP BY
        user_id, brand
)
SELECT
    brand,
    SUM(viewed) AS users_viewed,
    SUM(added_to_cart) AS users_added_to_cart,
    SUM(purchased) AS users_purchased,
    ROUND(SAFE_DIVIDE(SUM(added_to_cart), SUM(viewed)) * 100, 2) AS conv_view_to_cart_pct,
    ROUND(SAFE_DIVIDE(SUM(purchased), SUM(added_to_cart)) * 100, 2) AS conv_cart_to_purchase_pct,
    ROUND(SAFE_DIVIDE(SUM(purchased), SUM(viewed)) * 100, 2) AS conv_view_to_purchase_pct
FROM
    brand_user_events
GROUP BY
    brand
HAVING
    SAFE_DIVIDE(SUM(purchased), SUM(added_to_cart)) <= 1.0  -- Cart→Purchase ≤ 100%
    AND SAFE_DIVIDE(SUM(added_to_cart), SUM(viewed)) > 0    -- View→Cart > 0
ORDER BY
    users_viewed DESC
LIMIT 15;  -- Top 15 brands