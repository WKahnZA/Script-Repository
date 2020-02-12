--Top 20 Alerts in an Operational Database, by Alert Count 

SELECT TOP 20 SUM(1) AS AlertCount, AlertStringName, AlertStringDescription, MonitoringRuleId, Name 
FROM Alertview WITH (NOLOCK) 
WHERE TimeRaised is not NULL 
GROUP BY AlertStringName, AlertStringDescription, MonitoringRuleId, Name 
ORDER BY AlertCount DESC

