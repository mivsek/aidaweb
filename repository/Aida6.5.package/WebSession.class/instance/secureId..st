private
secureId: aNumber
	"return the unique identification of a secure session. This is a random generated number 
	at session generation. It can be used for session tracking in URLs, forms, etc."
	self ids at: 2 put: aNumber.