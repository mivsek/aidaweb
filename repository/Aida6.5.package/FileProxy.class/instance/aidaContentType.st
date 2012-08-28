accessing
aidaContentType
	"MIME type of original content. 'unknown' if not known"
	contentType isNil ifTrue: [self aidaContentType: 'unknown'].
	^contentType.