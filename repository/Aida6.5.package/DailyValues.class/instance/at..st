adding-removing
at: aDate
	^self at: aDate ifAbsent: [self defaultValue]