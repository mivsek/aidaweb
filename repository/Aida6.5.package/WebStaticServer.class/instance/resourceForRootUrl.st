serving
resourceForRootUrl
	"returns or creates an instance of FileProxy for root index.htm or index.html"
	| url proxy |
	url := '/index.htm'.
	proxy := self files at: url ifAbsent: 
		[proxy := self fileProxyForURL: url.
		proxy notNil ifTrue: 
			[self files at: url put: proxy. 
			^proxy]].
	url := '/index.html'.
	^self files at: url ifAbsentPut: 
		[proxy := self fileProxyForURL: url.
		proxy isNil ifTrue: [^nil].
		proxy].