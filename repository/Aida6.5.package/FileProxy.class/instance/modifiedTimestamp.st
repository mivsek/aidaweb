accessing-timestamps
modifiedTimestamp
	^self timestamps at: #modified ifAbsent: [nil]