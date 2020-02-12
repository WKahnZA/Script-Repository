--To find a computer name from a HealthServiceID (guid from the Agent proxy alerts)

select DisplayName, Path, basemanagedentityid from basemanagedentity where basemanagedentityid = 'guid'

