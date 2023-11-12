

{{ config(
  materialized='table'
) }}

select 
*
from  revrod_ds.seed__opportunity_line_item