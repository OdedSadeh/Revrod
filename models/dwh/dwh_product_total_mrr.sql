{{
    config(
        materialized='incremental',
        unique_key= ['PRODUCT', 'Date_month'],
        incremental_strategy='merge'
    )
}}


WITH source_data AS (
    SELECT date_month,
    PRODUCT,
    total_mrr
    FROM {{ref ('stg_product_total_mrr') }}
)

 SELECT date_month,
    PRODUCT,
    total_mrr
    from source_data