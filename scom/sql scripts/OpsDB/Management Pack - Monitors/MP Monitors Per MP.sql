--Monitors Per MP:

SELECT mp.MPName, COUNT(*) As MonitorsPerMPPerCategory 
FROM Monitor m 
INNER JOIN ManagementPack mp ON mp.ManagementPackID = m.ManagementPackID 
GROUP BY mp.MPName 
ORDER BY COUNT(*) Desc

