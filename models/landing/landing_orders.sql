
{{ config(
    full_refresh = false
) }}

select * from {{ source('snowflake_raw', 'orders') }}