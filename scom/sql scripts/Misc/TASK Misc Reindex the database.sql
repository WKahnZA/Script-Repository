--Reindex the database:

USE OperationsManager 
go 
SET ANSI_NULLS ON 
SET ANSI_PADDING ON 
SET ANSI_WARNINGS ON 
SET ARITHABORT ON 
SET CONCAT_NULL_YIELDS_NULL ON 
SET QUOTED_IDENTIFIER ON 
SET NUMERIC_ROUNDABORT OFF 
EXEC SP_MSForEachTable "Print 'Reindexing '+'?' DBCC DBREINDEX ('?')"

