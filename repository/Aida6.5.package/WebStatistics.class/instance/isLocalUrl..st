private
isLocalUrl: anUrlString
	"true, if this url points to page from this server"
	^self site uriPattern contains: [:siteIdentifier | 
		('http://', siteIdentifier host, '*') match: anUrlString].