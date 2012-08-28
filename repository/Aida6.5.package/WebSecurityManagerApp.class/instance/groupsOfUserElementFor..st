printing-users groups
groupsOfUserElementFor: anUser
	| e |
	e := WebElement new.
	(anUser groups asSortedCollection: [:g1 :g2 | g1 name < g2 name]) 
		do: [:each | e addLinkTo: each text: each name]
		separatedBy: [e addText: ', '].
	^e