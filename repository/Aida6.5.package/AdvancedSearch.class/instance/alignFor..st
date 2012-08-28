column mappings
alignFor: anAspectSymbol
	"column align for that field. nil if not defined"
	^(self colMapAt: anAspectSymbol ifAbsent: [^nil])
		at: 5