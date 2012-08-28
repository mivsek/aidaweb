column mappings
colAspects
	"for auto columns in search results"
	| aspects sorted |
	aspects := self searchedAspects asSet.
	sorted := OrderedCollection new.
	self colMap do: [:map | (aspects includes: map first) ifTrue: [sorted add: map first]]. "sort by order in colMap"
	^sorted