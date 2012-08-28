private-serving
addResponseHeadersTo: aHTTPResponse forPage: aWebPage on: aWebSession
	"use observee in app to find timestamps, because observee points 
	to right version of an object! "
	| object |
	object := aWebPage isWebApplication ifTrue: [aWebPage observee] ifFalse: [aWebPage].
	aHTTPResponse contentType: object aidaContentType.
	self addModifiedHeaderTo: aHTTPResponse forPage: aWebPage.
	self addExpiresHeaderTo: aHTTPResponse forPage: aWebPage.
	self addDontCacheHeaderTo: aHTTPResponse forPage: aWebPage.
"	self addUACompatibleHeaderTo: aHTTPResponse." "for stupid IE8 to avoid manual checking Compatibility view"
	aWebSession cookie ifFalse: 
		[aHTTPResponse cookie: (self cookieHeaderFor: aWebSession)].