--How to gather all the views in the database, their ID, MP location, and view type:

select vv.id as 'View Id', 
vv.displayname as 'View DisplayName', 
vv.name as 'View Name', 
vtv.DisplayName as 'ViewType', 
mpv.FriendlyName as 'MP Name' 
from ViewsView vv 
inner join managementpackview mpv on mpv.id = vv.managementpackid 
inner join viewtypeview vtv on vtv.id = vv.monitoringviewtypeid 
--where mpv.FriendlyName like '%default%' 
--where vv.displayname like '%operating%' 
order by mpv.FriendlyName, vv.displayname

