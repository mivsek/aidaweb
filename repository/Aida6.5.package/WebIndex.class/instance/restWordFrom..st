private-indexing
restWordFrom: aString
	"preparerest of the word, lowercase (also slovene chars)"
	^AIDASite sloveneLowercase: (aString copyFrom: 4 to: aString size)