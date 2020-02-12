--To find all managed computers that are currently down and not pingable:

SELECT bme.DisplayName,s.LastModified as LastModifiedUTC, dateadd(hh,-5,s.LastModified) as 'LastModifiedCST (GMT-5)' 
FROM state AS s, BaseManagedEntity AS bme 
WHERE s.basemanagedentityid = bme.basemanagedentityid 
AND s.monitorid 
IN (SELECT MonitorId FROM Monitor WHERE MonitorName = 'Microsoft.SystemCenter.HealthService.ComputerDown') 
AND s.Healthstate = '3' AND bme.IsDeleted = '0' 
ORDER BY s.Lastmodified DESC

