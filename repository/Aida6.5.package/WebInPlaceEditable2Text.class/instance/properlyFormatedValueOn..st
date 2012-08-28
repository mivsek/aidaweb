private-streaming
properlyFormatedValueOn: aSession
	| vlue |
	vlue := self value.
	vlue isNil ifTrue: [^''].
	self isFormated ifTrue: [vlue := vlue asWikiHtml].
	^AIDASite convertToWeb: "UTF8 encoding"
		(WebFormElement autoConvertAndEncodeQuotes: vlue) on: aSession