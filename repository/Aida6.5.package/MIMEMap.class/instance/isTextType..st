testing
isTextType: aTypeString
	"is this content type text based?"
	^self class arrayFromTextMimeTypes includes: aTypeString