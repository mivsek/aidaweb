private
streamHtmlTo: aStream for: aRequest on: aSession
	| existScriptTag |
	existScriptTag := self includesScriptTag. "don't add script tag if script already have it! "
	existScriptTag ifFalse: [aStream nextPutAll: '<script type="text/javascript"'].
	self source notNil ifTrue: 
		[aStream nextPutAll: ' src="', self source, '"'].
	existScriptTag ifFalse: [aStream nextPutAll: '>']. 
	self script notNil ifTrue: [aStream nextPutAll: script].
	existScriptTag ifFalse: [aStream nextPutAll: '</script>'].
	aStream nextPutAll: self eol.