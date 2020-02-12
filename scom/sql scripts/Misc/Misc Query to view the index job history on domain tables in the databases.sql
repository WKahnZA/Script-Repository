--Query to view the index job history on domain tables in the databases:

select * 
from DomainTable dt 
inner join DomainTableIndexOptimizationHistory dti 
on dt.domaintablerowID = dti.domaintableindexrowID 
ORDER BY optimizationdurationseconds DESC

