column mappings
sizeFor: anAspectSymbol
	"size for that field"
	^(self colMapAt: anAspectSymbol ifAbsent: [^nil])
		at: 3