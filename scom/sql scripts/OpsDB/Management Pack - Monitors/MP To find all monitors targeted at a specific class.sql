--To find all monitors targeted at a specific class:

SELECT * FROM monitor WHERE TargetManagedEntityType = (SELECT ManagedTypeId FROM ManagedType WHERE TypeName = 'Microsoft.Windows.Computer') 

