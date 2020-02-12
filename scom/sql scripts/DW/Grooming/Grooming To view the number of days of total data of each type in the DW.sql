--To view the number of days of total data of each type in the DW:

SELECT DATEDIFF(d, MIN(DWCreatedDateTime), GETDATE()) AS [Current] FROM Alert.vAlert 
SELECT DATEDIFF(d, MIN(DateTime), GETDATE()) AS [Current] FROM Event.vEvent 
SELECT DATEDIFF(d, MIN(DateTime), GETDATE()) AS [Current] FROM Perf.vPerfRaw 
SELECT DATEDIFF(d, MIN(DateTime), GETDATE()) AS [Current] FROM Perf.vPerfHourly 
SELECT DATEDIFF(d, MIN(DateTime), GETDATE()) AS [Current] FROM Perf.vPerfDaily 
SELECT DATEDIFF(d, MIN(DateTime), GETDATE()) AS [Current] FROM State.vStateRaw 
SELECT DATEDIFF(d, MIN(DateTime), GETDATE()) AS [Current] FROM State.vStateHourly 
SELECT DATEDIFF(d, MIN(DateTime), GETDATE()) AS [Current] FROM State.vStateDaily

