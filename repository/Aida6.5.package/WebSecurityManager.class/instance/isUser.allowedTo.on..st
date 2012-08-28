access control
isUser: aWebUser allowedTo: anAccessSymbol on: anObject 
	"test the access right for that object and that user or groups for that user"
	(self has: aWebUser rightTo: anAccessSymbol on: anObject) ifTrue: [^true].
	^(self hasUser: aWebUser rightInAnyGroupTo: anAccessSymbol on: anObject)