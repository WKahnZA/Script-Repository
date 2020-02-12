--Computers generating the most events, by event number: (This shows the noisiest computers, group by unique event numbers)

SELECT top 20 LoggingComputer as ComputerName, COUNT(*) AS TotalEvents, Number as EventID 
FROM EventallView with (NOLOCK) 
GROUP BY LoggingComputer, Number 
ORDER BY TotalEvents DESC

