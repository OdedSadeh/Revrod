{{ config(
  materialized='table'
) }}

select date_month,sum(TOTALPRICE) total_mrr 
from {{ref ('mrr_opportunity_line_item') }}   soli
left join {{ref ('stg_opportunity') }}  so
on soli.OPPORTUNITYID = so.ID
group by date_month