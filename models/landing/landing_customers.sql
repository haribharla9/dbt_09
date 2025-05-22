{{
    config(
        materialized='view'
    )
}}

select * from {{ source('snowflake_raw', 'customers') }}

