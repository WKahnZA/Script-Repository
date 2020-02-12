--To view all agents missing a specific hotfix (change the KB number below to the one you are looking for): 

select bme.path AS 'Agent Name', hs.patchlist AS 'Patch List' from MT_HealthService hs 
inner join BaseManagedEntity bme on hs.BaseManagedEntityId = bme.BaseManagedEntityId 
where hs.patchlist not like '%951380%' 
order by path

