SELECT 
  {{ make_upper('first_name') }} AS upper_first_name,
  {{ make_upper('last_name') }} AS upper_last_name
FROM {{ ref('stg_customers') }}
