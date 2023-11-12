{{ config(
  materialized='table'
) }}


select ID,ACCOUNTID, date_month from `revrod_ds.mrr_opportunity` so
left join `revrod_ds.dw_dim_time` dt
--on dt.date_month between date_trunc(so.START_DATE,month) and so.END_DATE
on dt.date_month between so.START_DATE and so.END_DATE