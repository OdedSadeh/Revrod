{{ 
    config(
  materialized='table'
) 
}}


WITH date_range AS (
  SELECT
    DATE '2010-01-01' AS start_date,
    DATE '2030-12-31' AS end_date
)

SELECT
  DATE_ADD(dr.start_date, INTERVAL offset MONTH) AS date_month
FROM
  date_range dr,
   UNNEST(GENERATE_ARRAY(0, DATE_DIFF(DATE_TRUNC(dr.end_date, MONTH), DATE_TRUNC(dr.start_date, MONTH), MONTH))) AS offset
