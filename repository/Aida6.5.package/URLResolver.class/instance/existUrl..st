testing
existUrl: aString
	"return true if URL has connection to some object"
	^self allUrlLinks includesKey: aString asLowercase