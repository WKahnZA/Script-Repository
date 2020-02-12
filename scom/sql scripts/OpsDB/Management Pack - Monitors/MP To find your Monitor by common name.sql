--To find your Monitor by common name:

select * from Monitor m 
Inner join LocalizedText LT on LT.ElementName = m.MonitorName 
where LTValue = 'Monitor Common Name'

