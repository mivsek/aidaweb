serving
answer: anObject toPut: aRequest on: aWebSession
	"WebDAV: try to PUT content into that object"
	(anObject isKindOf: FileProxy) ifFalse: [^HTTPException forbidden].
	anObject put: aRequest putData.
	^HTTPResponse ok