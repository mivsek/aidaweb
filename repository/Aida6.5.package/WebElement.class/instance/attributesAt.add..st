private-attributes
attributesAt: aSymbol add: aString
	"some attributes can have more than one value (like javascript for events)"
	| coll |
	self attributes isNil ifTrue: [self initAttributes].
	coll := self attributes at: aSymbol ifAbsentPut: [OrderedCollection new].
	(coll isKindOf: OrderedCollection) ifFalse:
		[coll := (self attributes at: aSymbol put: 
			(OrderedCollection new add: (self attributes at: aSymbol); yourself)) ].
	coll add: aString