private-importing
storeMap
	"put a new map into #urlToMethodMap method in library"
	| cr methodBody |
	self library invalidateMapCache. 
	cr := String with: Character cr.
	methodBody := 'urlToMethodMap
	MapCache ifNotNil: [^MapCache].
	^MapCache := Dictionary new'.
	self map keys asSortedCollection do: [:url || array |
		array := self map at: url.
		methodBody := methodBody, cr, '		at: ''', url, 
			''' put: #(', array first "method" asString, ' ''', array last "contentType", ''');' ].
	methodBody	:= methodBody, cr, '		yourself.'.
	self library class compile: methodBody classified: 'map'