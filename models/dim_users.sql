SELECT
    user_id,
    first_name,
    last_name,
    email
FROM
    {{ ref('stg_users') }}