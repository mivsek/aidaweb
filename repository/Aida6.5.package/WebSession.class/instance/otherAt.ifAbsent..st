private-other
otherAt: aSymbol ifAbsent: aBlock
	"other values"
	self other isNil ifTrue: [^aBlock value].
	^self other at: aSymbol ifAbsent: aBlock