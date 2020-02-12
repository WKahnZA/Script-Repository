--To find your Monitor by ID name:

select * from Monitor m 
Inner join LocalizedText LT on LT.ElementName = m.MonitorName 
where m.monitorname = 'Monitor ID name'

