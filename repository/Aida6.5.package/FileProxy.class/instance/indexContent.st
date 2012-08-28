indexing
indexContent
	"index text in server global index"
	self aidaContentType = 'text/html' ifTrue: [self site index indexObject: self]