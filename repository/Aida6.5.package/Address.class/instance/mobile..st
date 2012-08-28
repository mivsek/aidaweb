accessing
mobile: aString
	self phones size > 1 ifTrue: [^self phones at: 2 put: aString].
	self phones size = 0 ifTrue: [self phones add: ''].
	^self phones add: aString