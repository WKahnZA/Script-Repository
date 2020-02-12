--Default grooming for the DW for the AEM dataset:  (Aggregated data kept for 400 days, RAW 30 days by default)

SELECT AggregationTypeID, BuildAggregationStoredProcedureName, GroomStoredProcedureName, MaxDataAgeDays, GroomingIntervalMinutes 
FROM StandardDatasetAggregation WHERE BuildAggregationStoredProcedureName = 'AemAggregate'

