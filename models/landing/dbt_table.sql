{{ config(materialized="table", full_refresh=false) }}

select
    null::varchar as first_name,
    null::varchar as second_name,
    null::varchar as address,
    null::numeric as contact,
    null::numeric as number
where false
