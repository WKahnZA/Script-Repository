--Show index fragmentation (to determine how badly you need a reindex – logical scan frag > 10% = bad. Scan density below 80 = bad):

DBCC SHOWCONTIG

--DBCC SHOWCONTIG WITH FAST (less data than above – in case you don’t have time)

