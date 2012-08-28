access control
hasUser: aWebUser rightInAnyGroupTo: anAccessSymbol on: anObject 
	"test the access right for that object and in groups for that user"
	aWebUser groups do: [:group |
		(self has: group rightTo: anAccessSymbol on: anObject) ifTrue: [^true] ].
	^(self has: self allUsersGroup rightTo: anAccessSymbol on: anObject)