--To find all rules per MP with a given alert severity:

declare @mpid as varchar(50) 
select @mpid= managementpackid from managementpack where 
mpName='Microsoft.Exchange.Server.2003.Monitoring' 
select rl.rulename,rl.ruleid,md.modulename from rules rl, module md 
where md.managementpackid = @mpid 
and rl.ruleid=md.parentid 
and moduleconfiguration like '%<Severity>2</Severity>%' 

