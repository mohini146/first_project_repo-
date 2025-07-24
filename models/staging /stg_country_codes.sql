-- models/staging/stg_country_codes.sql

select *
from {{ ref('country_codes') }}
