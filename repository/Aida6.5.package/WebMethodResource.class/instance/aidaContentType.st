accessing
aidaContentType
	"MIME type for our resource"	
	contentType isNil ifTrue: [self aidaContentType: 'image/gif'].
	^contentType