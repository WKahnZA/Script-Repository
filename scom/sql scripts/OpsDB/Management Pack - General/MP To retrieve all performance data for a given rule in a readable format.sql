--To retrieve all performance data for a given rule in a readable format use the following query: (change the r.RuleName value – get list from Rules Table)

SELECT bme.Path, pc.ObjectName, pc.CounterName, ps.PerfmonInstanceName, pdav.SampleValue, pdav.TimeSampled 
FROM PerformanceDataAllView AS pdav with (NOLOCK) 
INNER JOIN PerformanceSource ps on pdav.PerformanceSourceInternalId = ps.PerformanceSourceInternalId 
INNER JOIN PerformanceCounter pc on ps.PerformanceCounterId = pc.PerformanceCounterId 
INNER JOIN Rules r on ps.RuleId = r.RuleId 
INNER JOIN BaseManagedEntity bme on ps.BaseManagedEntityID = bme.BaseManagedEntityID 
WHERE r.RuleName = 'Microsoft.Windows.Server.2003.LogicalDisk.FreeSpace.Collection' 
GROUP BY PerfmonInstanceName, ObjectName, CounterName, SampleValue, TimeSampled, bme.path 
ORDER BY bme.path, PerfmonInstanceName, TimeSampled

