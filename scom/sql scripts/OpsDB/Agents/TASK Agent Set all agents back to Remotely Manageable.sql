--Here is a query that will set all agents back to Remotely Manageable: 

UPDATE MT_HealthService 
SET IsManuallyInstalled=0 
WHERE IsManuallyInstalled=1 

