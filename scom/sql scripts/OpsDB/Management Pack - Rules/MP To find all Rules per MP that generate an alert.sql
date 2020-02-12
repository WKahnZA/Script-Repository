--To find all Rules per MP that generate an alert:  

declare @mpid as varchar(50) 
select @mpid= managementpackid from managementpack where 
mpName='Microsoft.Exchange.2007' 
select rl.rulename,rl.ruleid,md.modulename from rules rl, module md 
where md.managementpackid = @mpid 
and rl.ruleid=md.parentid 
and moduleconfiguration like '%<AlertLevel>50</AlertLevel>%'

