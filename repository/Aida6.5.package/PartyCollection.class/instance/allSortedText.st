accessing
allSortedText
	"org.unitss first, then role groups, roles, persons, as text"
	| sorted text |
	sorted := self allSorted asOrderedCollection.
	text := ''.
	sorted do: [:each |
		(each isKindOf: Person) ifTrue: [text := text, each surnameName].
		(each isKindOf: OrganizationUnit) ifTrue: [text := text, each name].
		(each isKindOf: RoleGroup) ifTrue: [text := text, each name].
		each = sorted last ifFalse: [text := text, ', '] ].
	^text