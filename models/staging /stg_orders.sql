SELECT
    ORDER_ID,
    CUSTOMER_ID,
    STATUS
FROM {{ source('public', 'orders_raw') }}
