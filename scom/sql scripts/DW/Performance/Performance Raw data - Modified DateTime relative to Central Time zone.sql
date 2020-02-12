--Raw data - Modified DateTime relative to Central Time zone:

select top 10 Path, FullName, ObjectName, CounterName, InstanceName, SampleValue, dateadd(hh,-5,DateTime) as 'DateTime (GMT-5)' 
from Perf.vPerfRaw pvpr 
inner join vManagedEntity vme on pvpr.ManagedEntityRowId = vme.ManagedEntityRowId 
inner join vPerformanceRuleInstance vpri on pvpr.PerformanceRuleInstanceRowId = vpri.PerformanceRuleInstanceRowId 
inner join vPerformanceRule vpr on vpr.RuleRowId = vpri.RuleRowId 
WHERE CounterName = 'Private Bytes' 
AND Path = 'OMDB.OPSMGR.NET' 
Order By DateTime DESC 

