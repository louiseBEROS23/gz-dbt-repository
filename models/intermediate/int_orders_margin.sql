SELECT 
orders_id,
date_date
,ROUND(SUM(revenue),2) as revenue_per_order
,SUM(quantity) as qty_per_order
,ROUND(SUM(purchase_cost),2) as purchase_cost_per_order
,ROUND(SUM(margin),2) margin_per_order
FROM {{ ref('int_sales_margin') }}
GROUP BY orders_id,date_date
ORDER BY orders_id DESC


