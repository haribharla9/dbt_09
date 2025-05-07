{{ config(store_failures_as="table") }}

select *
from {{ ref("staging_payment") }}
where amount < 0
