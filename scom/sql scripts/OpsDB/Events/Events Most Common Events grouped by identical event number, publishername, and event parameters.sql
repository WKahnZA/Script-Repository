--Most common events, grouped by identical event number, publishername, and event parameters: (This shows use completely redundant events with identical data - but might be different than the above queries... you need to see both data outputs to fully tune)

SELECT top 100 Number as EventID, COUNT(*) AS TotalEvents, Publishername as EventSource, EventParameters 
FROM EventAllView with (NOLOCK) 
GROUP BY Number, Publishername, EventParameters 
ORDER BY TotalEvents DESC

