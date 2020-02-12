--Default grooming for the DW for each dataset, to examine Data Warehouse grooming settings:

SELECT AggregationIntervalDurationMinutes, BuildAggregationStoredProcedureName, GroomStoredProcedureName, MaxDataAgeDays, GroomingIntervalMinutes FROM StandardDatasetAggregation

The first row is the interval in minutes. 
NULL is raw data, 60 is hourly, and 1440 is daily. 
The second and third row shows what data it is 
MaxDataAgeDays has the retention period in days - this is the field to update if the administrator wants to lower the days of retention. 
RAW alert – 400 days 
RAW event – 100 days 
RAW perf – 10 days (hourly and daily perf = 400 days) 
RAW state – 180 days  (hourly and daily state = 400 days)

