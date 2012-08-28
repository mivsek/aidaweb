accessing-doctypes
htmlDocType
	^self otherAt: #HTMLDocType ifAbsent: [self setDefaultDocType].