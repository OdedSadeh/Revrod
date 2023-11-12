

{{ config(
  materialized='table'
) }}

select 
ID,
OPPORTUNITYID,
UNITPRICE,
QUANTITY,
TOTALPRICE,
PRODUCT
from  revrod_ds.seed__opportunity_line_item