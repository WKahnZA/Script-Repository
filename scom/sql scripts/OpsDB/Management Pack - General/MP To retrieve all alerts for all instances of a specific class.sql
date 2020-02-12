--To retrieve all alerts for all instances of a specific class use the following query and substitute in the required table name, in this example MT_DBEngine is used to look for SQL alerts: 

SELECT * FROM Alert WHERE BaseManagedEntityID IN (SELECT BaseManagedEntityID from MT_DBEngine)

