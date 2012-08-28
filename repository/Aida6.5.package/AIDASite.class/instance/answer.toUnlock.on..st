serving
answer: anObject toUnlock: aRequest on: aWebSession
	"WebDAV unlock request for that object"
	^HTTPResponse noContent. "204"