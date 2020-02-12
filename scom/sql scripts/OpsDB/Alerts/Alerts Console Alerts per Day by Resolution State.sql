--Number of console Alerts per Day by Resolution State:

SELECT 
CASE WHEN(GROUPING(CONVERT(VARCHAR(20), TimeAdded, 102)) = 1) THEN 'All Days' ELSE CONVERT(VARCHAR(20), TimeAdded, 102) END AS [Date], 
CASE WHEN(GROUPING(ResolutionState) = 1) THEN 'All Resolution States' ELSE CAST(ResolutionState AS VARCHAR(5)) END AS [ResolutionState], 
COUNT(*) AS NumAlerts 
FROM Alert WITH (NOLOCK) 
WHERE TimeRaised is not NULL 
GROUP BY CONVERT(VARCHAR(20), TimeAdded, 102), ResolutionState WITH ROLLUP 
ORDER BY DATE DESC

