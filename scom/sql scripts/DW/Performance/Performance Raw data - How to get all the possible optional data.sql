--Raw data - How to get all the possible optional data to modify these queries above, in a list:

Select Distinct Path 
from Perf.vPerfRaw pvpr 
inner join vManagedEntity vme on pvpr.ManagedEntityRowId = vme.ManagedEntityRowId 
inner join vPerformanceRuleInstance vpri on pvpr.PerformanceRuleInstanceRowId = vpri.PerformanceRuleInstanceRowId 
inner join vPerformanceRule vpr on vpr.RuleRowId = vpri.RuleRowId 

Select Distinct Fullname 
from Perf.vPerfRaw pvpr 
inner join vManagedEntity vme on pvpr.ManagedEntityRowId = vme.ManagedEntityRowId 
inner join vPerformanceRuleInstance vpri on pvpr.PerformanceRuleInstanceRowId = vpri.PerformanceRuleInstanceRowId 
inner join vPerformanceRule vpr on vpr.RuleRowId = vpri.RuleRowId 

Select Distinct ObjectName 
from Perf.vPerfRaw pvpr 
inner join vManagedEntity vme on pvpr.ManagedEntityRowId = vme.ManagedEntityRowId 
inner join vPerformanceRuleInstance vpri on pvpr.PerformanceRuleInstanceRowId = vpri.PerformanceRuleInstanceRowId 
inner join vPerformanceRule vpr on vpr.RuleRowId = vpri.RuleRowId 

Select Distinct CounterName 
from Perf.vPerfRaw pvpr 
inner join vManagedEntity vme on pvpr.ManagedEntityRowId = vme.ManagedEntityRowId 
inner join vPerformanceRuleInstance vpri on pvpr.PerformanceRuleInstanceRowId = vpri.PerformanceRuleInstanceRowId 
inner join vPerformanceRule vpr on vpr.RuleRowId = vpri.RuleRowId 

Select Distinct InstanceName 
from Perf.vPerfRaw pvpr 
inner join vManagedEntity vme on pvpr.ManagedEntityRowId = vme.ManagedEntityRowId 
inner join vPerformanceRuleInstance vpri on pvpr.PerformanceRuleInstanceRowId = vpri.PerformanceRuleInstanceRowId 
inner join vPerformanceRule vpr on vpr.RuleRowId = vpri.RuleRowId

