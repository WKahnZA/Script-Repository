--Query to view the update statistics job history on domain tables in the databases:

select * 
from DomainTable dt 
inner join DomainTableStatisticsUpdateHistory dti 
on dt.domaintablerowID = dti.domaintablerowID 
ORDER BY UpdateDurationSeconds DESC

