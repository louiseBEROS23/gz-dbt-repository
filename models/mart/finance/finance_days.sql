SELECT 
date_date
,COUNT(orders_id) as nb_transactions
,ROUND(SUM(revenue_per_order),2) as revenue 
,ROUND(SAFE_DIVIDE(ROUND(SUM(revenue_per_order),2),COUNT(orders_id)),2) as average_basket
,ROUND(SUM(margin_per_order),2) as margin
,ROUND(SUM(operationel_margin),2) as operationnel_margin
FROM {{ ref('int_orders_operational') }}
GROUP BY date_date 
ORDER BY date_date DESC