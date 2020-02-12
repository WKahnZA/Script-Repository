--All managed computers count: 

SELECT COUNT(*) AS NumManagedComps FROM ( 
SELECT bme2.BaseManagedEntityID 
FROM BaseManagedEntity bme WITH (NOLOCK) 
            INNER JOIN BaseManagedEntity bme2 WITH (NOLOCK) ON bme2.BaseManagedEntityID = bme.TopLevelHostEntityID 
WHERE bme2.IsDeleted = 0 
            AND bme2.IsDeleted = 0 
            AND bme2.BaseManagedTypeID = (SELECT TOP 1 ManagedTypeID FROM ManagedType WHERE TypeName = 'microsoft.windows.computer') 
GROUP BY bme2.BaseManagedEntityID 
) AS Comps

