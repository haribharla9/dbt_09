{{
    config(
        materialized='table',
        transient = false,
        tags = ["Jaffle"]
    )
}}

select * from {{ source('raw_jaffle_shop', 'customers') }}