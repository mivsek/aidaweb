serving
resourceFor: aHTTPRequest
	"returns or creates an instance of FileProxy for requested file. Nil if not exist"
	| url proxy |
	url := AIDASite convertFromWeb: aHTTPRequest uriString on: aHTTPRequest session.  "for international Urls"
	url = '/' ifTrue: [^self resourceForRootUrl].
	^self files at: url ifAbsentPut:
		[proxy := self fileProxyForURL: url.
		proxy ifNil: [^nil].
		proxy]