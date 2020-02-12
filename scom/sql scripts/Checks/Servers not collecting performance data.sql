Use OperationsManager
if object_id('tempdb..#temptable') IS NOT NULL 
DROP TABLE #temptable

SELECT     distinct bmetarget.Name into #temptable
FROM        BaseManagedEntity AS BMESource WITH (nolock) INNER JOIN
 Relationship AS R WITH (nolock) ON 
R.SourceEntityId = BMESource.BaseManagedEntityId INNER JOIN
BaseManagedEntity AS BMETarget WITH (nolock) ON
 R.TargetEntityId = BMETarget.BaseManagedEntityId inner join mtv_computer d on bmetarget.name=d.[DisplayName]
 and d.IsVirtualMachine is null
WHERE     (bmetarget.fullname like 'Microsoft.Windows.Computer%')

if object_id('tempdb..#healthstate') IS NOT NULL 
DROP TABLE #healthstate

select  megv.path, megv.ismanaged, megv.isavailable, megv.healthstate into #healthstate
from managedentitygenericview as megv with (nolock) inner join managedtypeview as mtv with (nolock) 
on megv.monitoringclassid=mtv.id
where mtv.name ='microsoft.systemcenter.agent'

if object_id('tempdb..#perfcpudata') IS NOT NULL 
DROP TABLE #perfcpudata

select Path, 'CPU' as 'Cat' into #perfcpudata
from PerformanceDataAllView pdv with (NOLOCK)
inner join PerformanceCounterView pcv on pdv.performancesourceinternalid = pcv.performancesourceinternalid
inner join BaseManagedEntity bme on pcv.ManagedEntityId = bme.BaseManagedEntityId
where (TimeSampled < GETUTCDATE() AND TimeSampled > DATEADD(MINUTE,-240, GETUTCDATE()))
and objectname in ('Processor','Processor Information') and countername='% Processor Time'

if object_id('tempdb..#perfmemdata') IS NOT NULL 
DROP TABLE #perfmemdata

select Path,'Memory' as 'Cat' into #perfmemdata
from PerformanceDataAllView pdv with (NOLOCK)
inner join PerformanceCounterView pcv on pdv.performancesourceinternalid = pcv.performancesourceinternalid
inner join BaseManagedEntity bme on pcv.ManagedEntityId = bme.BaseManagedEntityId
where (TimeSampled < GETUTCDATE() AND TimeSampled > DATEADD(MINUTE,-240, GETUTCDATE()))
and objectname ='Memory' and countername='Available MBytes'

if object_id('tempdb..#perfdiskdata') IS NOT NULL 
DROP TABLE #perfdiskdata

select Path,'Disk' as 'Cat' into #perfdiskdata
from PerformanceDataAllView pdv with (NOLOCK)
inner join PerformanceCounterView pcv on pdv.performancesourceinternalid = pcv.performancesourceinternalid
inner join BaseManagedEntity bme on pcv.ManagedEntityId = bme.BaseManagedEntityId
where (TimeSampled < GETUTCDATE() AND TimeSampled > DATEADD(MINUTE,-240, GETUTCDATE()))
and objectname ='LogicalDisk' and countername='% Free Space' and instancename='C:'

if object_id('tempdb..#temptable1') IS NOT NULL 
DROP TABLE #temptable1
create table #temptable1 (
name nvarchar(250),
cat nvarchar(20),
val nvarchar(2)
)
insert into #temptable1
select name, 'CPU' as 'cat', '1' as 'val'
from #temptable where name not in
(select path from #perfcpudata where Path is not null)

insert into #temptable1
select name, 'Memory' as 'cat', '1' as 'val'
from #temptable where name not in
(select path from #perfmemdata where Path is not null)

insert into #temptable1
select name, 'Disk' as 'cat', '1' as 'val'
from #temptable where name not in
(select path from #perfdiskdata where Path is not null)

if object_id('tempdb..#output') IS NOT NULL 
DROP TABLE #output
create table #output (
name nvarchar(250),
cpu nvarchar(2),
memory nvarchar(2),
disk nvarchar(2)
)

insert into #output
select distinct tt.name ,'0','0','0'
from #temptable1 as tt, #healthstate as hs
where tt.name=hs.path collate SQL_Latin1_General_CP1_CI_AS
and hs.isavailable=1
and hs.ismanaged=1
and hs.healthstate is not null

update #output set cpu=1 where #output.name in (select name from #temptable1 where #temptable1.name=#output.name and #temptable1.cat='CPU')
update #output set memory=1 where #output.name in (select name from #temptable1 where #temptable1.name=#output.name and #temptable1.cat='Memory')
update #output set disk=1 where #output.name in (select name from #temptable1 where #temptable1.name=#output.name and #temptable1.cat='Disk')

select '1', name, cpu, memory,disk  from #output