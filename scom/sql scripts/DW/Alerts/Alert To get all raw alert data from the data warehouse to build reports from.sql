--To get all raw alert data from the data warehouse to build reports from:

select * from Alert.vAlertResolutionState ars 
inner join Alert.vAlertDetail adt on ars.alertguid = adt.alertguid 
inner join Alert.vAlert alt on ars.alertguid = alt.alertguid

