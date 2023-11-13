{{ 
  config(
  materialized='table'
) 
}}

with test as
(
select ID,count(*) count_account_for_one_opp from `revrod_ds.seed__opportunity`
group by ID
having count(*) > 1

)

select when count_account_for_one_opp is not null 
            then 'Error' 
                else 'OK' end issue
                from test
