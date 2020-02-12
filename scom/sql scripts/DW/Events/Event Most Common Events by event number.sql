--Most Common Events by event number:  (This helps us know which event ID's are the most common in the database) 

SELECT top 50 EventDisplayNumber, COUNT(*) AS TotalEvents 
FROM Event.vEvent 
GROUP BY EventDisplayNumber 
ORDER BY TotalEvents DESC 

