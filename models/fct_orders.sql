SELECT
    o.order_id,
    o.user_id,
    p.product_id,
    o.order_date,
    oi.quantity,
    p.price AS product_price,
    (oi.quantity * p.price) AS order_total
FROM
    {{ ref('stg_orders') }} o
JOIN
    {{ ref('stg_order_items') }} oi ON o.order_id = oi.order_id
JOIN
    {{ ref('stg_products') }} p ON oi.product_id = p.product_id