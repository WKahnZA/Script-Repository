--Number of instances of a type:  (Number of disks, computers, databases, etc that OpsMgr has discovered) 

SELECT mt.ManagedTypeID, mt.TypeName, COUNT(*) AS NumEntitiesByType 
FROM BaseManagedEntity bme WITH(NOLOCK) 
            LEFT JOIN ManagedType mt WITH(NOLOCK) ON mt.ManagedTypeID = bme.BaseManagedTypeID 
WHERE bme.IsDeleted = 0 
GROUP BY mt.ManagedTypeID, mt.TypeName 
ORDER BY COUNT(*) DESC

