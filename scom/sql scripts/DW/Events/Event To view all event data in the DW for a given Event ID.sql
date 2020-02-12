--To view all event data in the DW for a given Event ID:

select * from Event.vEvent ev 
inner join Event.vEventDetail evd on ev.eventoriginid = evd.eventoriginid 
inner join Event.vEventParameter evp on ev.eventoriginid = evp.eventoriginid 
where eventdisplaynumber = '528'

