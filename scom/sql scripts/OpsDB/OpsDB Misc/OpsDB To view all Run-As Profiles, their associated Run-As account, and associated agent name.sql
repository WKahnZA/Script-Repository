--To view all Run-As Profiles, their associated Run-As account, and associated agent name:

select srv.displayname as 'RunAs Profile Name', 
srv.description as 'RunAs Profile Description', 
cmss.name as 'RunAs Account Name', 
cmss.description as 'RunAs Account Description', 
cmss.username as 'RunAs Account Username', 
cmss.domain as 'RunAs Account Domain', 
mp.FriendlyName as 'RunAs Profile MP', 
bme.displayname as 'HealthService' 
from dbo.SecureStorageSecureReference sssr 
inner join SecureReferenceView srv on srv.id = sssr.securereferenceID 
inner join CredentialManagerSecureStorage cmss on cmss.securestorageelementID = sssr.securestorageelementID 
inner join managementpackview mp on srv.ManagementPackId = mp.Id 
inner join BaseManagedEntity bme on bme.basemanagedentityID = sssr.healthserviceid 
order by srv.displayname

