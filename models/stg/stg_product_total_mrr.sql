{{ 
  config(
  materialized='table'
) 
}}

select COALESCE(date_month,'1900-01-01') date_month,
PRODUCT, 
sum(TOTALPRICE) total_mrr 
from {{ref ('mrr_opportunity_line_item') }} soli 
left join  {{ref ('stg_opportunity') }} so 
on   soli.OPPORTUNITYID = so.ID 
group by date_month,
          PRODUCT
