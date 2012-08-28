private-contexts
findContextFor: aRequest
	"POSTs and Ajax requests must always have context ids!. Also set the current context"
	| id |
	id := aRequest contextId.
	(id isNil or: [(self contexts includesKey: id) not]) ifTrue: [^nil].
	^self contexts at: id