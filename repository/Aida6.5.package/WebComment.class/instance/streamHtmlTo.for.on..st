private
streamHtmlTo: aStream for: aRequest on: aSession
	aStream nextPutAll: self ident, '<!-- '.
	aStream nextPutAll: self text.
	aStream nextPutAll: ' -->', self eol.