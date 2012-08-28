printing-elements
hierarchyLinksElement
	| e ttext |
	e := WebElement new.
	e addText: self site name, ' / '.
	e addLinkTo: self observee text: #en->'Security'.
	e addText: ' / '.
	(#(users addUser removeUsers) includes: self view) ifTrue: [ttext := #en->'<b>Users</b>'].
	(#(groups addGroup removeGroup) includes: self view) ifTrue: [ttext := #en->'<b>Groups</b>'].
	(#(filters) includes: self view) ifTrue: [ttext := #en->'<b>Filters</b>'].
	e addLinkTo: self observee text: ttext view: self view.
	^e