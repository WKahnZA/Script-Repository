--To view data on all alerts modified by a specific user:

select ars.alertguid, alertname, alertdescription, statesetbyuserid, resolutionstate, statesetdatetime, severity, priority, managedentityrowID, repeatcount 
from Alert.vAlertResolutionState ars 
inner join Alert.vAlert alt on ars.alertguid = alt.alertguid 
where statesetbyuserid like '%username%' 
order by statesetdatetime

