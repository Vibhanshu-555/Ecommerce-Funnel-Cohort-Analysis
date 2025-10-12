WITH category_user_events AS (
    SELECT
        user_id,
        main_category,
        MAX(CASE WHEN event_type = 'view' THEN 1 ELSE 0 END) AS viewed,
        MAX(CASE WHEN event_type = 'cart' THEN 1 ELSE 0 END) AS added_to_cart,
        MAX(CASE WHEN event_type = 'purchase' THEN 1 ELSE 0 END) AS purchased
    FROM
        infra-throne-471611-v9.ecommerce_analytics.events_clean_final
    GROUP BY
        user_id, main_category
)
SELECT
    main_category,
    SUM(viewed) AS users_viewed,
    SUM(added_to_cart) AS users_added_to_cart,
    SUM(purchased) AS users_purchased,
    ROUND(SAFE_DIVIDE(SUM(added_to_cart), SUM(viewed)) * 100, 2) AS conv_view_to_cart_pct,
    ROUND(SAFE_DIVIDE(SUM(purchased), SUM(added_to_cart)) * 100, 2) AS conv_cart_to_purchase_pct,
    ROUND(SAFE_DIVIDE(SUM(purchased), SUM(viewed)) * 100, 2) AS conv_view_to_purchase_pct
FROM
    category_user_events
GROUP BY
    main_category
ORDER BY
    users_viewed DESC;
