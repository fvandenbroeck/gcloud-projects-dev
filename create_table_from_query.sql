CREATE TABLE `bqmlforecast.training_data` AS (
    SELECT
        date
        , item_description item_name
        , SUM(sale_dollars) total_sales_amount
        , SUM(bottles_sold) total_units_amount

    FROM `bigquery-public-data.iowa_liquor_sales.sales` 
    GROUP BY item_name,date
)