--To find all installed Management Packs and their version:

SELECT MPName, MPFriendlyName, MPVersion, MPIsSealed 
FROM ManagementPack WITH(NOLOCK) 
ORDER BY MPName

