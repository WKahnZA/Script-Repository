USE OperationsManagerDW
go
SELECT DISTINCT 
                      MngE.DisplayName AS ServerName, MM.StartDateTime, MM.EndDateTime, MM.PlannedMaintenanceInd AS [PlannedMaintenance_1Yes-0No], 
                      MM.DWLastModifiedDateTime, MMH.Comment, MMH.UserId
FROM         OperationsManagerDW.dbo.vMaintenanceMode AS MM INNER JOIN
                      OperationsManagerDW.dbo.vMaintenanceModeHistory AS MMH ON MMH.MaintenanceModeRowId = MM.MaintenanceModeRowId INNER JOIN
                      OperationsManagerDW.dbo.vManagedEntity AS MngE ON MngE.ManagedEntityRowId = MM.ManagedEntityRowId
WHERE     
--(MngE.DisplayName LIKE '%satfinfmom01%') 
MngE.FullName LIKE '%computer:%' AND (MM.StartDateTime > '2011-07-01')
ORDER BY MM.DWLastModifiedDateTime



