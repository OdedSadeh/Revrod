{{ config(
  materialized='table'
) }}

select * 
from  revrod_ds.seed__account