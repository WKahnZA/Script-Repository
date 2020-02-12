/*Count dirty aggregations in last X days*/
USE OperationsManagerDW
DECLARE @Days AS int
SET @Days = 1 --number of days to go back
SELECT Count(*) AS [Failed],    DS.DatasetDefaultName AS [Dataset],    
CASE SDAH.AggregationTypeId        
WHEN 0 THEN 'Raw' WHEN 20 THEN 'Hourly' WHEN 30 THEN 'Daily' ELSE 'Unknown'    
END AS [Type]
FROM Dataset AS DS INNER JOIN    StandardDatasetAggregationHistory AS SDAH ON SDAH.DatasetId = DS.DatasetId
WHERE SDAH.DirtyInd <> 0 AND SDAH.AggregationDateTime > DATEADD(DD, -@Days, getdate())
GROUP BY DS.DatasetDefaultName, SDAH.AggregationTypeId
ORDER BY [Failed] DESC, [Dataset] ASC, [Type] ASC