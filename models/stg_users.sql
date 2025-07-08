SELECT
    id AS user_id,
    first_name,
    last_name,
    email
FROM
    {{ source('ecommerce', 'users') }}