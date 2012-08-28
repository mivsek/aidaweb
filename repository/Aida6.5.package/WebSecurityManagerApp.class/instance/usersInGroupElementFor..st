printing-users groups
usersInGroupElementFor: aGroup
	| e |
	e := WebElement new.
	(aGroup allUsers asSortedCollection: [:u1 :u2 | u1 nameSurname < u2 nameSurname]) 
		do: [:each | e addLinkTo: each text: each nameSurname]
		separatedBy: [e addText: ', '].
	^e