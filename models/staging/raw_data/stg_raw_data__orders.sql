with 

source as (

    select * from {{ source('raw_data', 'orders') }}

),

stg_orders as (

    select
        id as order_id,
        customer_id,
        order_date,
        status as order_status
        
    from source

)

select * from stg_orders
