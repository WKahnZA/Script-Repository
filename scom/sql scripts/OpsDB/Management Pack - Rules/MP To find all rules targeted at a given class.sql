--To find all rules targeted at a given class use the following query and substitute in the required class name: 

SELECT * FROM Rules WHERE TargetManagedEntityType = (SELECT ManagedTypeId FROM ManagedType WHERE TypeName = 'Microsoft.Windows.Computer')  

