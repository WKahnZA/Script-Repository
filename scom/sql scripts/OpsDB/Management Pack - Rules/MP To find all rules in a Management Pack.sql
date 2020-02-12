--Rules are stored in a table named Rules. This table has columns linking rules to classes and Management Packs. To find all rules in a Management Pack use the following query and substitute in the required Management Pack name: 

SELECT * FROM Rules WHERE ManagementPackID = (SELECT ManagementPackID from ManagementPack WHERE MPName = 'Microsoft.Windows.Server.2003')  

