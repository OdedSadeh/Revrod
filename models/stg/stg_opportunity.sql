{{ config(
  materialized='table'
) }}


select ID,ACCOUNTID, 
case when EXTRACT(Year FROM start_date) = EXTRACT(Year FROM end_date)
      and  EXTRACT(month FROM start_date) = EXTRACT(month FROM end_date)  
        then date_trunc(so.start_date, month) 
          else dt.date_month
            end date_month
 from {{ref ('mrr_opportunity') }} so
left join `revrod_ds.dw_dim_time` dt
--on dt.date_month between date_trunc(so.START_DATE,month) and so.END_DATE
on dt.date_month between so.START_DATE and so.END_DATE
