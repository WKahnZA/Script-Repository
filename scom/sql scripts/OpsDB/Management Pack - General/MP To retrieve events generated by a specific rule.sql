--To retrieve events generated by a specific rule use the following query and substitute in the required rule ID: 

SELECT * FROM Event_00 WHERE RuleId = (SELECT RuleId FROM Rules WHERE RuleName = 'Microsoft.Windows.Server.2003.OperatingSystem.CleanShutdown.Collection ') 
