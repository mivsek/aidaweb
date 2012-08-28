private-contexts
contexts
	"a dictionary of context by context id (a unique number)"
	contexts isNil ifTrue: [self initContexts].
	^contexts