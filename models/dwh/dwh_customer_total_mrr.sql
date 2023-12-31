{{
    config(
        materialized='incremental',
        unique_key= ['ID', 'Date_month'],
        incremental_strategy='merge'
    )
}}


WITH source_data AS (
    SELECT date_month,
    ID,
    description,
    total_mrr
    FROM {{ref ('stg_customer_total_mrr') }}
)

 SELECT date_month,
    ID,
    description,
    total_mrr
    from source_data