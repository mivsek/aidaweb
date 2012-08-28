accessing
onlyPersons
	"just individual persons"
	^self parties select: [:each | each isKindOf: Person]