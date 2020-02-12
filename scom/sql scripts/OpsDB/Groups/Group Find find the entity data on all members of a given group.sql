--Find find the entity data on all members of a given group (change the group name below):

SELECT bme.* 
FROM BaseManagedEntity bme 
INNER JOIN RelationshipGenericView rgv WITH(NOLOCK) ON bme.basemanagedentityid = rgv.TargetMonitoringObjectid 
WHERE bme.IsDeleted = '0' 
AND rgv.SourceMonitoringObjectDisplayName = 'Agent Managed Computer Group' 
ORDER BY bme.displayname

