--Most Common Events by event number:  (This helps us know which event ID's are the most common in the database)

SELECT top 20 Number as EventID, COUNT(*) AS TotalEvents 
FROM EventView with (NOLOCK) 
GROUP BY Number 
ORDER BY TotalEvents DESC

