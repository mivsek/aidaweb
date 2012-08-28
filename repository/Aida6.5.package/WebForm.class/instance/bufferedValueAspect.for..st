model adapting
bufferedValueAspect: aSymbol for: anObject
	"find a bufered (not yet saved) value of this aspect of domain object"
	| flds |
	flds := self allFields select: [:each | each adaptor subject == anObject].
	^(flds detect: [:each | each adaptor aspect = aSymbol] ifNone: [^nil])
		adaptor buffer