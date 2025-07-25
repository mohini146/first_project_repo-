SELECT
    ID AS customer_id,
    NAME,
    COUNTRY
FROM {{ source('public', 'customer_raw') }}
