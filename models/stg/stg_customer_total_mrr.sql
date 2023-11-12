{{ 
  config(
  materialized='table'
) 
}}

with description as
(
select distinct  ID, 
                ifnull(concat(INDUSTRY,' | ',SALES_SEGMENT),'Unkown') description 
from {{ref ("mrr_account")}} as ma

)


select COALESCE(date_month,'1900-01-01') date_month,
COALESCE(so.ACCOUNTID,'-999') ID, 
description.description,
sum(TOTALPRICE) total_mrr 
from {{ref ('mrr_opportunity_line_item') }} soli 
left join  {{ref ('stg_opportunity') }}  so 
on   soli.OPPORTUNITYID = so.ID 

left join (select  ID from  {{ref ('mrr_account') }} 
group by ID)  as ma
on so.ACCOUNTID = ma.ID
left join description
on MA.ID = description.ID

group by date_month,
ID,
description