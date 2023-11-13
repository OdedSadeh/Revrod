{{
    config(
        materialized='incremental',
        unique_key= ['Date_month'],
        incremental_strategy='merge'
    )
}}


WITH source_data AS (
    SELECT date_month,
    total_mrr
    FROM {{ref ('stg_total_mrr') }}
)

 SELECT date_month,
    total_mrr
    from source_data