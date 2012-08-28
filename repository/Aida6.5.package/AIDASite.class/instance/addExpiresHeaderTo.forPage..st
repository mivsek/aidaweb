private-serving
addExpiresHeaderTo: aHTTPResponse forPage: aWebPage
	| object value |
	object := aWebPage isWebApplication ifTrue: [aWebPage observee] ifFalse: [aWebPage].
	value := object expiresTimestamp.
	value isNil ifTrue: [value := aWebPage expiresTimestamp]. "WebApp subclass can set it too! "
	value notNil ifTrue: [aHTTPResponse expires: value asSpTimestamp].