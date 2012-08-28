log analysis
bossCountersFromIISLogsIn: aDirectoryString

	" WebStatistics bossCountersFromIISLogsIn: 'h:\winnt\system32\logfiles\w3svc3\temp'  "
	| file boss |
	file := 'LogDict.boss'.
	boss := BinaryObjectStorage onNew: file asFilename writeStream.
	boss nextPut: 
		(self countersFromIISLogsIn: aDirectoryString).
	boss close.