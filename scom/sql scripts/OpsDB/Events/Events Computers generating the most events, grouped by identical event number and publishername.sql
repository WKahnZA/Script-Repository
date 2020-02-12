--Computers generating the most events, grouped by identical event number and publishername: 

SELECT top 20 LoggingComputer as ComputerName, COUNT(*) AS TotalEvents, PublisherName as EventSource, Number as EventID 
FROM EventallView with (NOLOCK) 
GROUP BY LoggingComputer, PublisherName, Number 
ORDER BY TotalEvents DESC

