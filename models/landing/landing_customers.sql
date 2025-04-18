{{
    config(
        materialized='table',
        transient = false
    )
}}

select * from {{ source('snowflake_raw', 'customers') }}