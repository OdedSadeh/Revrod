{{ config(
  materialized='table'
) }}

select 
ID,
INDUSTRY,
SALES_SEGMENT
from  revrod_ds.seed__account