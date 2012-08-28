adding-removing
removeObject: anObject
	"remove object and all its URLs. Returns true if object existed and false if not. 
	Remove also its web counter"
	| urls |
	self site critical:
		[urls := (self allWebPages at: anObject ifAbsent: [^nil]).
		self allWebPages removeKey: anObject.
		urls notNil ifTrue: [urls do: [: each | self allUrlLinks removeKey: each ifAbsent: [] ] ].
		self counters removeKey: anObject ifAbsent: [] ].
	^true