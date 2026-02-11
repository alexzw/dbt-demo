{{ config(materialized='view') }}

with src as (
  select
    cast(order_id as string)            as order_id,
    cast(order_date as date)            as order_date,
    cast(customer_id as string)         as customer_id,
    cast(product_id as string)          as product_id,
    cast(quantity as int64)             as quantity,
    cast(unit_price as numeric)         as unit_price,
    cast(order_amount as numeric)       as order_amount_raw,
    trim(cast(order_status as string))  as order_status
  from staging.orders
)

select
  order_id,
  order_date,
  customer_id,
  product_id,
  quantity,
  unit_price,
  -- if order_amount is null, compute a simple fallback = qty * price
  coalesce(order_amount_raw, cast(quantity * unit_price as numeric)) as order_amount,
  lower(order_status) as order_status
from src