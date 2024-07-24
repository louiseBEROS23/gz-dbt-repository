with temp_table AS
(
SELECT *
,ROUND((quantity*purchase_price),2) as purchase_cost
,ROUND((revenue-(quantity*purchase_price)),2) as margin
FROM  {{ ref('stg_raw__product')}}
JOIN {{ ref('stg_raw__sales')}}
USING (products_id)
)
SELECT *
,{{ margin_percent(margin,revenue) }} as margin_percent
FROM temp_table


