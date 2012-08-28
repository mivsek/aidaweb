accessing
secureId

	"return the unique identification of a secure session to browser. This is a random generated number at session generation. It can be used for session tracking in URLs, forms, etc."

	^self ids at: 2