--Most common events by event number and event publishername: (This gives us the event source name to help see what is raising these events)

SELECT top 20 Number as EventID, COUNT(*) AS TotalEvents, Publishername as EventSource 
FROM EventAllView eav with (nolock) 
GROUP BY Number, Publishername 
ORDER BY TotalEvents DESC

