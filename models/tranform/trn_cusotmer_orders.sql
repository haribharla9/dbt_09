with cte_customers as (
    select * from {{ ref('staging_customers') }}
),
cte_orders as (
    select * from {{ ref('staging_orders') }}
),
cte_country_code as (
    select * from {{ ref('customer_info') }}
),
cte_cust_orders as (
    select 
        cte_customers.id,
        cte_customers.first_name,
        cte_orders.order_date,
        cte_orders.status,
        cte_country_code.country
        from 
            cte_customers
        left join cte_orders
        left join cte_country_code
        where cte_orders.user_id = cte_customers.id and
        cte_country_code.user_id = cte_customers.id
)
select * from cte_cust_orders