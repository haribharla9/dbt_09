{{
    config(
        materialized='table',
        tags = ["Jaffle"]
    )
}}

select * from {{ source('raw_jaffle_shop', 'orders') }}