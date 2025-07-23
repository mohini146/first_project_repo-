with source as (

    select * from {{ source('public', 'customer_raw') }}

),

renamed as (

    select
        id as customer_id,
        name as customer_name,
        email,
        country
    from source

)

select * from renamed
