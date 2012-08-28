private-serving
addDontCacheHeaderTo: aHTTPResponse forPage: aWebPage
	| object value |
	object := aWebPage isWebApplication ifTrue: [aWebPage observee] ifFalse: [aWebPage].
	value := object aidaDontCache.
	value ifFalse: [value := aWebPage aidaDontCache]. "WebApp subclass can set it too! "
	value ifTrue: [aHTTPResponse cacheControl: 'no-store, no-cache, must-revalidate'].