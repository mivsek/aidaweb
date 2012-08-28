private
has: aWebUserOrGroup rightTo: anAccessSymbol on: anObject 
	"test the access right for that object and that user or group "
	| usersAndGroups |
	usersAndGroups := self accessByObject at: anObject ifAbsent: [^false].
	(usersAndGroups includesKey: aWebUserOrGroup)	ifTrue:
		[((usersAndGroups at: aWebUserOrGroup) includes: anAccessSymbol) ifTrue: [^true] ].
	^false