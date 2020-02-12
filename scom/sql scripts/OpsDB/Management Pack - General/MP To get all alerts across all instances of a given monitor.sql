--The Alert table contains all alerts currently open in OpsMgr. This includes resolved alerts until they are groomed out of the database. To get all alerts across all instances of a given monitor use the following query and substitute in the required monitor name: 

SELECT * FROM Alert WHERE ProblemID IN (SELECT MonitorId FROM Monitor WHERE MonitorName = 'Microsoft.SQLServer.2005.DBEngine.ServiceMonitor') 

