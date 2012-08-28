private-ids
nextIdNumber
	"considering also already registered ids on above contexts"
	| nr |
	nextId isNil ifTrue: [nextId := self ids size + 1].
	nr := self isFirst not ifTrue: [self parent nextIdNumber - 1] ifFalse: [0].
	nr := nr + nextId + 1.
	nextId := nextId + 1.
	^nr