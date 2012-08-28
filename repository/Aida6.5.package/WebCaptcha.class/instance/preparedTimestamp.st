private
preparedTimestamp
	^self timestamps at: #prepared ifAbsent: [nil]