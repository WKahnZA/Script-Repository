--To dump out all the rules and monitors that have overrides, and display the context and instance of the override: 

select rv.DisplayName as WorkFlowName, OverrideName, mo.Value as OverrideValue, 
mt.TypeName as OverrideScope, bme.DisplayName as InstanceName, bme.Path as InstancePath, 
mpv.DisplayName as ORMPName, mo.LastModified as LastModified 
from ModuleOverride mo 
inner join managementpackview mpv on mpv.Id = mo.ManagementPackId 
inner join ruleview rv on rv.Id = mo.ParentId 
inner join ManagedType mt on mt.managedtypeid = mo.TypeContext 
left join BaseManagedEntity bme on bme.BaseManagedEntityId = mo.InstanceContext 
Where mpv.Sealed = 0 
UNION ALL 
select mv.DisplayName as WorkFlowName, OverrideName, mto.Value as OverrideValue, 
mt.TypeName as OverrideScope, bme.DisplayName as InstanceName, bme.Path as InstancePath, 
mpv.DisplayName as ORMPName, mto.LastModified as LastModified 
from MonitorOverride mto 
inner join managementpackview mpv on mpv.Id = mto.ManagementPackId 
inner join monitorview mv on mv.Id = mto.MonitorId 
inner join ManagedType mt on mt.managedtypeid = mto.TypeContext 
left join BaseManagedEntity bme on bme.BaseManagedEntityId = mto.InstanceContext 
Where mpv.Sealed = 0 
Order By mpv.DisplayName

