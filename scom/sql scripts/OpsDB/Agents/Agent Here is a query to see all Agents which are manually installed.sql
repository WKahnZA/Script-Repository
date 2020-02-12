--Here is a query to see all Agents which are manually installed: 

select bme.DisplayName from MT_HealthService mths 
INNER JOIN BaseManagedEntity bme on bme.BaseManagedEntityId = mths.BaseManagedEntityId 
where IsManuallyInstalled = 1

