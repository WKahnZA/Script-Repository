--To find all members of a given group (change the group name below):

select SourceMonitoringObjectDisplayName as 'Group Name', 
TargetMonitoringObjectDisplayName as 'Group Members' 
from RelationshipGenericView 
where isDeleted=0 
AND SourceMonitoringObjectDisplayName = 'Agent Managed Computer Group' 
ORDER BY TargetMonitoringObjectDisplayName 

