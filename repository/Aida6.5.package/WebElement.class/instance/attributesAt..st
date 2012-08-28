private-attributes
attributesAt: aSymbol
	self attributes isNil ifTrue: [^nil].
	^self attributes at: aSymbol ifAbsent: [nil]