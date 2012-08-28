accessing
width
	^self settingsAt: #width ifAbsent: [self defaultWidth]