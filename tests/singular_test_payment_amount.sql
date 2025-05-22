{{
    config(
        store_failures = true
    )
}}

select * from {{ ref('landing_payments') }}
where amount < 0 