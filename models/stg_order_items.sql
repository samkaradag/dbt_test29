SELECT
    order_id,
    product_id,
    quantity
FROM
    {{ source('ecommerce', 'order_items') }}