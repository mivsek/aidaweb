private-parsing
numberFrom: aString
	"Integer, Float or Double"
	"WebJSON new numberFrom: '14.49156' "
	| nrDecimals clean pos exponent result sign |
	(aString includes: $. ) ifFalse: [^aString asNumber].
	nrDecimals := aString size - (aString indexOf: $. ).
	sign := aString detect: [:ch | ch = $- | ch isDigit].
	sign = $- ifTrue: [sign := -1] ifFalse: [sign := 1].
	clean := aString select: [:ch | ch isDigit | (ch = $. )].
	pos := clean indexOf: $. .
	pos = 0 
		ifTrue: [result := clean asInteger asFloat]
		ifFalse: 
			[exponent := pos - 2.
			clean := clean select: [:ch | ch isDigit].
			result := nrDecimals <= 4 ifTrue: [0.0] ifFalse: [0.0d].
			clean do: [:digit | 
				result := result + ((digit asInteger - $0 asInteger) * (10**exponent)).
				exponent := exponent - 1]].
	^result * sign