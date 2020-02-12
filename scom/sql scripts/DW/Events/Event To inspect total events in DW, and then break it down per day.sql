--To inspect total events in DW, and then break it down per day:  (this helps us know what we will be grooming out, and look for partitcular day event storms) 

SELECT CASE WHEN(GROUPING(CONVERT(VARCHAR(20), DateTime, 101)) = 1) 
THEN 'All Days' 
ELSE CONVERT(VARCHAR(20), DateTime, 101) END AS DayAdded, 
COUNT(*) AS NumEventsPerDay 
FROM Event.vEvent 
GROUP BY CONVERT(VARCHAR(20), DateTime, 101) WITH ROLLUP 
ORDER BY DayAdded DESC 

