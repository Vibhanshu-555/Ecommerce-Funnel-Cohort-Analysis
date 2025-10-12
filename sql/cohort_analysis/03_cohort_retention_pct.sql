WITH cohort_size AS (
    SELECT
        cohort_date,
        COUNT(DISTINCT user_id) AS total_users
    FROM
        `infra-throne-471611-v9.ecommerce_analytics.01_user_cohorts`
    GROUP BY
        cohort_date
)
SELECT
    r.cohort_date,
    r.days_since_cohort,
    r.active_users,
    c.total_users,
    ROUND((r.active_users / c.total_users) * 100, 2) AS retention_pct
FROM
    `infra-throne-471611-v9.ecommerce_analytics.02_cohort_retention` r
JOIN
    cohort_size c
ON
    r.cohort_date = c.cohort_date
ORDER BY
    r.cohort_date, r.days_since_cohort;
