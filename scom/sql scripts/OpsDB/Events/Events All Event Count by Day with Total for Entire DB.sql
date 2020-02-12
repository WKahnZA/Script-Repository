--All Events by count by day, with total for entire database:  (this tells us how many events per day we are inserting - and helps us look for too many events, event storms, and the result after tuning rules that generate too many events)

SELECT CASE WHEN(GROUPING(CONVERT(VARCHAR(20), TimeAdded, 102)) = 1) 
THEN 'All Days' 
ELSE CONVERT(VARCHAR(20), TimeAdded, 102) END AS DayAdded, 
COUNT(*) AS EventsPerDay 
FROM EventAllView 
GROUP BY CONVERT(VARCHAR(20), TimeAdded, 102) WITH ROLLUP 
ORDER BY DayAdded DESC

