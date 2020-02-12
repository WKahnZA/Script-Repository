--Computers generating the most events: (This shows us which computers create the most event traffic and use the most database space)

SELECT top 20 LoggingComputer as ComputerName, COUNT(*) AS TotalEvents 
FROM EventallView with (NOLOCK) 
GROUP BY LoggingComputer 
ORDER BY TotalEvents DESC

