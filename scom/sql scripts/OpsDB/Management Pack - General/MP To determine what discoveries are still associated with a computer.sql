--To determine what discoveries are still associated with a computer – helpful in finding old stale computer objects in the console that are no longer agent managed, or desired.

select BME.FullName, DS.DiscoveryRuleID, D.DiscoveryName from typedmanagedentity TME 
Join BaseManagedEntity BME ON TME.BaseManagedEntityId = BME.BaseManagedEntityId 
JOIN DiscoverySourceToTypedManagedEntity DSTME ON TME.TypedManagedEntityID = DSTME.TypedManagedEntityID 
JOIN DiscoverySource DS ON DS.DiscoverySourceID = DSTME.DiscoverySourceID 
JOIN Discovery D ON DS.DiscoveryRuleID=D.DiscoveryID 
Where BME.Fullname like '%ComputerName%'

