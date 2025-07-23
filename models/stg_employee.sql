-- models/staging/stg_employee.sql

with source as (

    select * from {{ source('public', 'employee_data') }}

),

renamed as (

    select
        id as employee_id,
        name,
        department,
        joining_date
    from source

)

select * from renamed
