column mappings
nameFor: anAspectSymbol
	"column name/title for that field"
	^(self colMapAt: anAspectSymbol ifAbsent: [^nil])
		at: 2