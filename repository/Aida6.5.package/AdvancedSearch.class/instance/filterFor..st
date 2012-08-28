column mappings
filterFor: anAspectSymbol
	"column filter yes/no/size for that field"
	^(self colMapAt: anAspectSymbol ifAbsent: [^nil])
		at: 4