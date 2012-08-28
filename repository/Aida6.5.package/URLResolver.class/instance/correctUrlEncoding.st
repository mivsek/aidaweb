private
correctUrlEncoding
	"make sure all urls are decodedHTTP, without %20 etc"
	self allUrlLinks keys do: [:key | (key decodedHTTP ~= key) 
		ifTrue: [self allUrlLinks at: key decodedHTTP put: (self allUrlLinks at: key). 
			self allUrlLinks removeKey: key] ].
	self allWebPages values do: [:coll |
	coll copy do: [:each | (each decodedHTTP ~= each) 
		ifTrue: [coll at: (coll indexOf: each) put: each decodedHTTP] ] ].

"
self allURLLinks keys select: [:key | (key decodedHTTP ~= key)].
self allWebPages associations select: [:assoc |
	assoc value contains: [:each | (each decodedHTTP ~= each)] ].
"