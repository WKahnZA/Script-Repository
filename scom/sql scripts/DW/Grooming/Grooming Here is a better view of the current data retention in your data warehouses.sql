--Here is a better view of the current data retention in your data warehouse:

select ds.datasetDefaultName AS 'Dataset Name', sda.AggregationTypeId AS 'Agg Type 0=raw, 20=Hourly, 30=Daily', sda.MaxDataAgeDays AS 'Retention Time in Days' 
from dataset ds, StandardDatasetAggregation sda 
WHERE ds.datasetid = sda.datasetid 
ORDER by ds.datasetDefaultName

