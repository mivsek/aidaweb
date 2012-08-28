private-other
otherAt: aSymbol ifAbsent: aBlock
	self other isNil ifTrue: [^aBlock value].
	^self other at: aSymbol ifAbsent: aBlock