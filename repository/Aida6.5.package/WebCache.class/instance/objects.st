private
objects
	"a dictionary of cache entries per domain object per view"
	objects isNil ifTrue: [self initObjects].
	^objects