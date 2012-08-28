column mappings
colAlignsWithout: anArrayOfAspects
	"for auto columns in search results"
	| collection |
	collection := OrderedCollection new.
	(self colAspectsWithout: anArrayOfAspects) do: [:aspect || map |
		map := self colMapAt: aspect ifAbsent: [nil].
		collection add: (map notNil ifTrue: [map at: 5 "align" ifAbsent: [nil]]) ].
	^collection