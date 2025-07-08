SELECT
  CAST(order_date AS DATE) AS date_day,
  EXTRACT(DAYOFWEEK FROM CAST(order_date AS DATE)) AS day_of_week,
  EXTRACT(DAY FROM CAST(order_date AS DATE)) AS day_of_month,
  EXTRACT(DAYOFYEAR FROM CAST(order_date AS DATE)) AS day_of_year,
  EXTRACT(WEEK FROM CAST(order_date AS DATE)) AS week_of_year,
  EXTRACT(MONTH FROM CAST(order_date AS DATE)) AS month_of_year,
  EXTRACT(QUARTER FROM CAST(order_date AS DATE)) AS quarter_of_year,
  EXTRACT(YEAR FROM CAST(order_date AS DATE)) AS year
FROM {{ ref('stg_orders') }}
GROUP BY
    date_day,
    day_of_week,
    day_of_month,
    day_of_year,
    week_of_year,
    month_of_year,
    quarter_of_year,
    year
ORDER BY
    date_day