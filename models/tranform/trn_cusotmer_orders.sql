with
    cte_customers as (select * from {{ ref("landing_customers") }}),
    cte_orders as (select * from {{ ref("landing_orders") }}),
    cte_country as (select * from {{ ref("customer_info") }}),
    cte_cust_orders as (
        select
            cte_customers.id,
            cte_customers.first_name,
            cte_orders.status,
            cte_country.country
        from cte_customers
        left join cte_orders
        left join cte_country
        where
            cte_orders.user_id = cte_customers.id or
            cte_country.user_id = cte_customers.id
    )
select *
from cte_cust_orders
