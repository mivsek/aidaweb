header elements
addMetaContentType: aString
	"example: 'text/html; charset=iso8859-2'"
	self addHeader: 'meta' value: 'http-equiv="Content-Type"  content="', aString, '" '