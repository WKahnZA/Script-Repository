--Set a specific agent back to Remotely Manageable

UPDATE MT_HealthService 
SET IsManuallyInstalled=0 
WHERE IsManuallyInstalled=1 
AND BaseManagedEntityId IN 
(select BaseManagedEntityID from BaseManagedEntity 
where BaseManagedTypeId = 'AB4C891F-3359-3FB6-0704-075FBFE36710' 
AND DisplayName = 'servername.domain.com') 

