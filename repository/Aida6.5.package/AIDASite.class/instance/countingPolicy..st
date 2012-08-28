settings
countingPolicy: aSymbol
	"from who to count requests with WebCounters: #all, #excludeAdmins, #onlyGuests, #none"
	(#(#all, #excludeAdmins, #onlyGuests, #none) includes: aSymbol) 
		ifFalse: [self error: 'unknown policy'].
	self settings  at: #countingPolicy put: aSymbol