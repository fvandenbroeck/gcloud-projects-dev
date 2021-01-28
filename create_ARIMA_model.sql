-- insert model into Dataset containing training data
CREATE OR REPLACE MODEL bqmlforecast.arima_model 

OPTIONS(
  MODEL_TYPE='ARIMA',
  TIME_SERIES_TIMESTAMP_COL='date', 
  TIME_SERIES_DATA_COL='total_sales_amount',
  TIME_SERIES_ID_COL='item_name',
  HOLIDAY_REGION='US'
) AS

SELECT 
      date
    , item_name
    , total_sales_amount
FROM
  bqmlforecast.training_data