private
otherAt: aString ifAbsent: aBlock
	self other isNil ifTrue: [^aBlock value].
	^self other at: aString ifAbsent: [aBlock value]