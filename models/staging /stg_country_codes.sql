-- models/stg_country_codes.sql
SELECT
  country_code,
  country_name
FROM {{ ref('country_codes') }}
