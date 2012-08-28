accessing
allOrgUnits
	"all units down in hierarchy, together with self"
	| collection |
	collection := OrderedCollection new.
	collection add: self.
	self units do: [:each | collection addAll: each allOrgUnits].
	^collection