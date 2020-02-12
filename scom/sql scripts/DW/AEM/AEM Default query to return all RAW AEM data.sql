--Default query to return all RAW AEM data: 

select * from [CM].[vCMAemRaw] Rw 
inner join dbo.AemComputer Computer on Computer.AemComputerRowID = Rw.AemComputerRowID 
inner join dbo.AemUser Usr on Usr.AemUserRowId = Rw.AemUserRowId 
inner join dbo.AemErrorGroup EGrp on Egrp.ErrorGroupRowId = Rw.ErrorGroupRowId 
Inner join dbo.AemApplication App on App.ApplicationRowId = Egrp.ApplicationRowId

