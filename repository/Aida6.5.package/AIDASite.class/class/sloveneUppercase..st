slovenian characters
sloveneUppercase: aString
	^aString collect: [:chr | 
		(AIDASite isSloveneCharacter: chr)
			ifTrue: 	[(chr = AIDASite charc) ifTrue: [AIDASite charC]
				ifFalse: [(chr = AIDASite chars) ifTrue: [AIDASite charS]
					ifFalse: [(chr = AIDASite charz) ifTrue: [AIDASite charZ]
						ifFalse: [chr] ]]]
			ifFalse: [chr asUppercase]
		].