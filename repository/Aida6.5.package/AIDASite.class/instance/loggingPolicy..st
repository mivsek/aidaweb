settings
loggingPolicy: aSymbol
	"from who to log requests with WebCounters: #all, #excludeAdmins, #onlyGuests, #none"
	(#(#all, #excludeAdmins, #onlyGuests, #none) includes: aSymbol) 
		ifFalse: [self error: 'unknown policy'].
	self settings  at: #loggingPolicy put: aSymbol