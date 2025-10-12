SELECT
    event_type,
    COUNT(*) AS event_count,
    COUNT(DISTINCT user_id) AS unique_users
FROM
    `infra-throne-471611-v9.ecommerce_analytics.events_clean_final`
GROUP BY
    event_type
ORDER BY
    CASE event_type
        WHEN 'view' THEN 1
        WHEN 'cart' THEN 2
        WHEN 'purchase' THEN 3
        ELSE 4
    END;
