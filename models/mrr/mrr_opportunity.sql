{{ config(
  materialized='table'
) }}

select  ID,
        ACCOUNTID,
        START_DATE,
        END_DATE
from  revrod.revrod_ds.seed__opportunity
group by 
        ID,
        ACCOUNTID,
        START_DATE,
        END_DATE


