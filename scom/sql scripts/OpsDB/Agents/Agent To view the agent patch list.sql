--To view the agent patch list (all hotfixes applied to all agents)

select bme.path AS 'Agent Name', hs.patchlist AS 'Patch List' from MT_HealthService hs 
inner join BaseManagedEntity bme on hs.BaseManagedEntityId = bme.BaseManagedEntityId 
order by path

