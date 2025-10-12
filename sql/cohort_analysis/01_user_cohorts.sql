WITH first_user_event AS (
    SELECT
        user_id,
        MIN(DATE(event_time)) AS cohort_date
    FROM
        `infra-throne-471611-v9.ecommerce_analytics.events_clean_final`
    GROUP BY
        user_id
)
SELECT
    e.user_id,
    f.cohort_date,
    DATE(e.event_time) AS event_date,
    e.event_type
FROM
    `infra-throne-471611-v9.ecommerce_analytics.events_clean_final` e
JOIN
    first_user_event f
ON
    e.user_id = f.user_id;