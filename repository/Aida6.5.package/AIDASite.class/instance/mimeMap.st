system services
mimeMap
	^self systemServices 
		at: #MimeMap
		ifAbsent: 
			[self addSystemService: MIMEMap new named: #MimeMap.
			^self mimeMap].