--Rules per MP by category:

SELECT mp.MPName, r.RuleCategory, COUNT(*) As RulesPerMPPerCategory 
FROM Rules r 
INNER JOIN ManagementPack mp ON mp.ManagementPackID = r.ManagementPackID 
GROUP BY mp.MPName, r.RuleCategory 
ORDER BY RulesPerMPPerCategory DESC  

