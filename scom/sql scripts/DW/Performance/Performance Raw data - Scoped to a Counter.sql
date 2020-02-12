--Raw data - Scoped to a Counter:

select top 10 Path, FullName, ObjectName, CounterName, InstanceName, SampleValue, DateTime 
from Perf.vPerfRaw pvpr 
inner join vManagedEntity vme on pvpr.ManagedEntityRowId = vme.ManagedEntityRowId 
inner join vPerformanceRuleInstance vpri on pvpr.PerformanceRuleInstanceRowId = vpri.PerformanceRuleInstanceRowId 
inner join vPerformanceRule vpr on vpr.RuleRowId = vpri.RuleRowId 
WHERE CounterName = 'Private Bytes' 

