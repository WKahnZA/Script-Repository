--Data Warehouse query to examine the index and statistics history - run the following query for the Alert, Event, Perf, and State tables (these are non-domain tables):

select basetablename, optimizationstartdatetime, optimizationdurationseconds, 
      beforeavgfragmentationinpercent, afteravgfragmentationinpercent, 
      optimizationmethod, onlinerebuildlastperformeddatetime 
from StandardDatasetOptimizationHistory sdoh 
inner join StandardDatasetAggregationStorageIndex sdasi 
on sdoh.StandardDatasetAggregationStorageIndexRowId = sdasi.StandardDatasetAggregationStorageIndexRowId 
inner join StandardDatasetAggregationStorage sdas 
on sdasi.StandardDatasetAggregationStorageRowId = sdas.StandardDatasetAggregationStorageRowId 
ORDER BY optimizationdurationseconds DESC
