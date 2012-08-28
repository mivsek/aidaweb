accessing
popularWords
	"return a dictionary of words as keys and aWebCounters as values"
	popularWords isNil ifTrue: [self initPopularWords].
	^popularWords