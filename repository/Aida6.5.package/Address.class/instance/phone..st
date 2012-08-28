accessing
phone: aString
	self phones size > 0 ifTrue: [^self phones at: 1 put: aString].
	^self phones add: aString