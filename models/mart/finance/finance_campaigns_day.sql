SELECT *
,operationnel_margin-ads_cost as ads_margin 
FROM {{ ref('int_campaigns_day') }}
JOIN {{ ref('finance_days') }}
USING (date_date)
ORDER BY date_date DESC