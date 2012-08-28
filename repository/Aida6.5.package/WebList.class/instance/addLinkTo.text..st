adding/removing
addLinkTo: anObject text: aString 
	"add new line to the list with text and link to some object. Return link, not line!" 
	| line link |
	line := WebListItem new.
	link := line addLinkTo: anObject text: aString.
	self add: line.
	^link