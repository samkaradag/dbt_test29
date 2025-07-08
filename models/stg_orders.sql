SELECT
    id AS order_id,
    user_id,
    order_date,
    status
FROM
    {{ source('ecommerce', 'orders') }}