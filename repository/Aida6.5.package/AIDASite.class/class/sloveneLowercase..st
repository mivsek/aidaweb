slovenian characters
sloveneLowercase: aString
	^aString collect: [:chr | 
		(AIDASite isSloveneCharacter: chr)
			ifTrue: 	[(chr = AIDASite charC) ifTrue: [AIDASite charc]
				ifFalse: [(chr = AIDASite charS) ifTrue: [AIDASite chars]
					ifFalse: [(chr = AIDASite charZ) ifTrue: [AIDASite charz]
						ifFalse: [chr] ]]]
			ifFalse: [chr asLowercase]
		].