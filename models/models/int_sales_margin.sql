SELECT *
,ROUND((revenue-(quantity*purchase_price)),2) as margin
FROM  {{ ref('stg_raw__product')}}
JOIN {{ ref('stg_raw__sales')}}
USING (products_id)

