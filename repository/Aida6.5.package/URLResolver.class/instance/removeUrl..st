adding-removing
removeUrl: aString
	"remove this URL and also object, if this url was the last one pointed to object Returns 
	true if url existed and false if not. Also remove web counter"
	| object |
	self site critical:
		[object := (self allUrlLinks at: aString asLowercase ifAbsent: [^nil]).
		(self allWebPages at: object) remove: aString asLowercase ifAbsent: [].
		(self allWebPages at: object) isEmpty ifTrue: [self allWebPages removeKey: object]. 
		self allUrlLinks removeKey: aString asLowercase.
		self counters removeKey: object ifAbsent: [] ].
	^true