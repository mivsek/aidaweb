request counting
counterForUrl: anUrlString

	"return a counter for object with specified url. Nil if not exist"

	| object  |
	object := self objectOnUrl: anUrlString.
	object isNil ifTrue: [^nil].
	^self counterFor: object.

"URLResolver default counterForUrl: '/osn/g_l-vse.htm'"
"WebServer default totalCounter"
"WebServer default pagesCounter"