{{ config(
  materialized='table'
) }}

select  ID,
        ACCOUNTID,
        START_DATE,
        END_DATE
from  revrod.revrod_ds.seed__opportunity
where START_DATE is not null
and end_date is not null
group by 
        ID,
        ACCOUNTID,
        START_DATE,
        END_DATE


