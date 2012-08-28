accessing
phone
	^self phones size > 0 
		ifTrue: [self phones first]
		ifFalse: ['']