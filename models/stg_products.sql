SELECT
    id AS product_id,
    name AS product_name,
    price
FROM
    {{ source('ecommerce', 'products') }}