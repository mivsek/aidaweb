testing-user agent
isBrowserSupported
	"advanced functions like Ajax supported in this browser?"
	"Test for JSON support or IE8 and newer for now"
	| supported version |
	supported := self otherAt: #BrowserSupported ifAbsentPut:
		[supported := self existsJson ifTrue: [true] ifFalse: 
			[self isFromMSIE 
				ifTrue:
					[version := self lastRequest userAgent readStream upToAll: 'MSIE'; upTo: $ ; upTo: $. .
"					Transcript cr; show: ('*** ? browser: ', self lastRequest userAgent, ' from: ', self user username). "
					version asInteger >= 8]
				ifFalse: [true] ]. "for now"
		supported].
	supported ifFalse: [self other removeKey: #BrowserSupported]. "to always recheck"
	^supported

"
('Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.6; .NET CLR 2.0.50727; .NET CLR 1.1.4322; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)'  readStream upToAll: 'MSIE'; upTo: $ ; upTo: $.) asInteger
"