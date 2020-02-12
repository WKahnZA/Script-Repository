--Performance insertions per day: 

SELECT CASE WHEN(GROUPING(CONVERT(VARCHAR(20), TimeSampled, 102)) = 1) 
THEN 'All Days' ELSE CONVERT(VARCHAR(20), TimeSampled, 102) 
END AS DaySampled, COUNT(*) AS PerfInsertPerDay 
FROM PerformanceDataAllView with (NOLOCK) 
GROUP BY CONVERT(VARCHAR(20), TimeSampled, 102) WITH ROLLUP 
ORDER BY DaySampled DESC
