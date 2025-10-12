WITH cohort_events AS (
    SELECT
        user_id,
        cohort_date,
        DATE_DIFF(DATE(event_date), cohort_date, DAY) AS days_since_cohort
    FROM
        `infra-throne-471611-v9.ecommerce_analytics.01_user_cohorts`
)
SELECT
    cohort_date,
    days_since_cohort,
    COUNT(DISTINCT user_id) AS active_users
FROM
    cohort_events
WHERE
    days_since_cohort BETWEEN 0 AND 30
GROUP BY
    cohort_date, days_since_cohort
ORDER BY
    cohort_date, days_since_cohort;
