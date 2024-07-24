SELECT *
,ROUND((margin_per_order+shipping_fee)-(logcost+ship_cost),2) AS operationel_margin
FROM  {{ ref('int_orders_margin') }}
JOIN {{ ref('stg_raw__ship') }}
USING (orders_id)
ORDER BY orders_id DESC