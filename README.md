# gcloud-projects-dev

in this git I will document gcloud projects

## BigQuery Forecasting using ML
### Steps
- **Pre-processing**: Automatic cleaning adjustments to the input time series, including missing values, duplicated timestamps, spike anomalies, and accounting for abrupt level changes in the time series history.
<br>

- **Holiday effects**: Time series modeling in BigQuery ML can also account for holiday effects. By default, holiday effects modeling is disabled. But since this data is from the United States, and the data includes a minimum one year of daily data, you can also specify an optional HOLIDAY_REGION. With holiday effects enabled, spike and dip anomalies that appear during holidays will no longer be treated as anomalies. A full list of the holiday regions can be found in the HOLIDAY_REGION documentation.
<br>

- **Seasonal and trend decomposition** using STL algorithm. 
<br>

- **Seasonality extrapolation** using double exponential smoothing.
<br>

- **Trend modeling** using the ARIMA model and the auto.ARIMA algorithm for automatic hyper-parameter tuning. In auto.ARIMA, dozens of candidate models are trained and evaluated in parallel, which include p,d,q and drift. The best model comes with the lowest Akaike information criterion (AIC).
