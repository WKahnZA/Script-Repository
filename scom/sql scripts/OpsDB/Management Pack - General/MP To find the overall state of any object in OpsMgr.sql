--To find the overall state of any object in OpsMgr the following query should be used to return the state of the System.EntityState monitor: 

SELECT bme.FullName, bme.DisplayName, s.HealthState FROM state AS s, mt_managedcomputer AS mt, BaseManagedEntity as bme WHERE s.basemanagedentityid = bme.basemanagedentityid AND s.monitorid IN (SELECT MonitorId FROM Monitor WHERE MonitorName = 'System.Health.EntityState')  

