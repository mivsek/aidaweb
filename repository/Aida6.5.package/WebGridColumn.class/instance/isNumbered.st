testing
isNumbered
	self parent numbering isNil ifTrue: [^false].
	^self parent numbering = self id