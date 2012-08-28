private-serving
addModifiedHeaderTo: aHTTPResponse forPage: aWebPage
	| object value |
	object := aWebPage isWebApplication ifTrue: [aWebPage observee] ifFalse: [aWebPage].
	value := object modifiedTimestamp.
	value isNil ifTrue: [value := aWebPage modifiedTimestamp]. "WebApp subclass can set it too! "
	value notNil ifTrue: [aHTTPResponse lastModified: value asSpTimestamp].