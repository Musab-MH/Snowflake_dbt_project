with 

source as (

    select * from {{ source('raw_data', 'customers') }}

),

stg_customers as (

    select
        id as customer_id,
        name as customer_name,
        email,
        country

    from source

)

select * from stg_customers
