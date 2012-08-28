private-ajax
ensureOnClickReturnFalseAtEnd
	"for onClick script, ensure that 'return false' (if any) will be the last sentence in the script"
	| coll new |
	coll := self attributesAt: #onClick. coll isNil ifTrue: [^nil].
	(coll isKindOf: OrderedCollection) ifFalse: [^nil].
	(coll contains: [:each | '*return false*' match: each]) ifFalse: [^nil].
	new := coll reject: [:each | '*return false*' match: each].  "also to avoid duplicates"
	new := new add: 'return false'; yourself.
	self attributesAt: #onClick put: new.