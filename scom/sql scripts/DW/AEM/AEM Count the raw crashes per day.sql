--Count the raw crashes per day:

SELECT CONVERT(char(10), DateTime, 101) AS "Crash Date (by Day)", COUNT(*) AS "Number of Crashes" 
FROM [CM].[vCMAemRaw] 
GROUP BY CONVERT(char(10), DateTime, 101) 
ORDER BY "Crash Date (by Day)" DESC

