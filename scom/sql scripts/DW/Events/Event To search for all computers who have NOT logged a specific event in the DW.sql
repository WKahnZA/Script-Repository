--To search for all computers who have NOT logged a specific event in the DW:

select distinct elc.computername from Event.vEvent ev 
inner join vEventLoggingComputer elc on elc.eventloggingcomputerrowid = ev.loggingcomputerrowid 
where NOT eventdisplaynumber = '223'

