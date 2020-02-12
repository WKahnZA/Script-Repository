--Number of console Alerts per Day:

SELECT CONVERT(VARCHAR(20), TimeAdded, 102) AS DayAdded, COUNT(*) AS NumAlertsPerDay 
FROM Alert WITH (NOLOCK) 
WHERE TimeRaised is not NULL 
GROUP BY CONVERT(VARCHAR(20), TimeAdded, 102) 
ORDER BY DayAdded DESC

