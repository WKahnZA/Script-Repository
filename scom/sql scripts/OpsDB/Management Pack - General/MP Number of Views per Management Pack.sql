--Number of Views per Management Pack:

SELECT mp.MPName, v.ViewVisible, COUNT(*) As ViewsPerMP 
FROM [Views] v 
            INNER JOIN ManagementPack mp ON mp.ManagementPackID = v.ManagementPackID 
GROUP BY  mp.MPName, v.ViewVisible 
ORDER BY v.ViewVisible DESC, COUNT(*) Desc

