SELECT
    date_date
    ,COUNT(orders_id) AS nb_transactions
    ,ROUND(SUM(revenue_per_order),0) AS revenue 
    ,ROUND(AVG(revenue_per_order),1) AS average_basket
    ,ROUND(SUM(revenue_per_order)/COUNT(orders_id),1) AS average_basket_bis
    ,ROUND(SUM(margin_per_order),0) AS margin 
    ,ROUND(SUM(operationel_margin),0) AS operational_margin 
    ,ROUND(SUM(purchase_cost_per_order),0) AS purchase_cost 
    ,ROUND(SUM(shipping_fee),0) AS shipping_fee 
    ,ROUND(SUM(logcost),0) AS logcost 
    ,ROUND(SUM(ship_cost),0) AS ship_cost 
    ,SUM(qty_per_order) AS quantity 
FROM {{ ref('int_orders_operational') }}
GROUP BY  date_date
ORDER BY  date_date DESC