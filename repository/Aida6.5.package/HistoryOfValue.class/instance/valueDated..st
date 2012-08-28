accessing
valueDated: aDate 
	"get the value from history, which was valid on specified date. Returns nil if aDate is older from 
	oldest entry in history"

	
	| index |
	index := self indexForDate: aDate.
	index = 0 ifTrue: [^nil].
	index = nil ifTrue: [^nil].
	^self values at: index.