transformations
marginFor:  aNumber

	| margin |
	aNumber < 10 ifTrue: [^10].
	margin := 10 ** ((aNumber log: 10) truncated + 1).
	margin = (aNumber * 10) ifTrue: [^margin / 10].
	aNumber > (margin / 2) ifTrue: [^margin].
	aNumber > (margin / 4) ifTrue: [^margin / 2].
	^margin / 4.

"WebGraf new marginFor: 1001"