private
id: aNumber
	"return the unique identification of a nonsecure session. This is a random generated number 
	at session generation. It can be used for session tracking in URLs, forms, etc."
	self ids at: 1 put: aNumber.