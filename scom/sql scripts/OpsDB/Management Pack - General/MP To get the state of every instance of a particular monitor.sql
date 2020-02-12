--To get the state of every instance of a particular monitor the following query can be run, (replace <MonitorName> with the name of the monitor):

SELECT bme.FullName, bme.DisplayName, s.HealthState FROM state AS s, BaseManagedEntity as bme WHERE s.basemanagedentityid = bme.basemanagedentityid AND s.monitorid IN (SELECT MonitorId FROM Monitor WHERE MonitorName = =<MonitorName>‘)

/*For example, this gets the state of the Microsoft.SQLServer.2005.DBEngine.ServiceMonitor for each instance of the SQL 2005 Database Engine class. 

SELECT bme.FullName, bme.DisplayName, s.HealthState FROM state AS s, BaseManagedEntity as bme WHERE s.basemanagedentityid = bme.basemanagedentityid AND s.monitorid IN (SELECT MonitorId FROM Monitor WHERE MonitorName = 'Microsoft.SQLServer.2005.DBEngine.ServiceMonitor')  
*/

