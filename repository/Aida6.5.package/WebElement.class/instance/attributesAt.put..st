private-attributes
attributesAt: aSymbol put: aString
	self attributes isNil ifTrue: [self initAttributes].
	self attributes at: aSymbol put: aString