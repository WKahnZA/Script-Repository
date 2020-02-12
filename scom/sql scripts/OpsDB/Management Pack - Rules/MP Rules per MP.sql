--Rules per MP:

SELECT mp.MPName, COUNT(*) As RulesPerMP 
FROM Rules r 
INNER JOIN ManagementPack mp ON mp.ManagementPackID = r.ManagementPackID 
GROUP BY mp.MPName 
ORDER BY RulesPerMP DESC

