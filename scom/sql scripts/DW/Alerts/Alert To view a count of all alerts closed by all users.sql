--To view a count of all alerts closed by all users:

select statesetbyuserid, count(*) as 'Number of Alerts' 
from Alert.vAlertResolutionState ars 
where resolutionstate = '255' 
group by statesetbyuserid 
order by 'Number of Alerts' DESC

