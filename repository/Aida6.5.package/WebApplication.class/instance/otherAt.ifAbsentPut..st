private-other
otherAt: aSymbol ifAbsentPut: aBlock
	self other isNil ifTrue: [self initOther].
	^self other at: aSymbol ifAbsent: [self other at: aSymbol put: aBlock value]