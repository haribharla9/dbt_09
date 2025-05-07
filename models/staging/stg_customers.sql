

with source as (

    select * from {{ source('snowflake_raw_jaffle_shop', 'customers') }}

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name

    from source

)

select * from renamed
