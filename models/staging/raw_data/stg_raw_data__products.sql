with 

source as (

    select * from {{ source('raw_data', 'products') }}

),

stg_products as (

    select
        id as product_id,
        name as product_name,
        category as product_category,
        price as product_price

    from source

)

select * from stg_products
