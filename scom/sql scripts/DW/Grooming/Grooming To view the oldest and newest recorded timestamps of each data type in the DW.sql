--To view the oldest and newest recorded timestamps of each data type in the DW:

select min(DateTime) from Event.vEvent 
select max(DateTime) from Event.vEvent 
select min(DateTime) from Perf.vPerfRaw 
select max(DateTime) from Perf.vPerfRaw 
select min(DWCreatedDateTime) from Alert.vAlert 
select max(DWCreatedDateTime) from Alert.vAlert

