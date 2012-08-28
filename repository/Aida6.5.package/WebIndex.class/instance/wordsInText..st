indexing
wordsInText: aString
	"return a dictionary with all words as keys and number of occurences as values"
	| lastInx currInx word words |
	lastInx := 1. currInx := 1. words := Dictionary new. 
	aString do: [:chr | 
		(chr isAlphaNumeric or: [AIDASite isSloveneCharacter: chr]) ifFalse: 
			[word := aString copyFrom: lastInx to: currInx-1.
			lastInx := currInx+1.
			word := AIDASite sloveneLowercase: word.
			word notEmpty ifTrue: 
				[(words includesKey: word) ifFalse: [words at: word put: 0].
				words at: word put: (words at: word) + 1] ].
		currInx := currInx + 1].
	word := aString copyFrom: lastInx to: currInx-1.
	word := AIDASite sloveneLowercase: word.
	word notEmpty ifTrue: 
		[(words includesKey: word) ifFalse: [words at: word put: 0].
		words at: word put: (words at: word) + 1].
	^words

"
WebIndex default wordsInText: 'erot ljub'
"