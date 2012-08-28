adding/removing
addText: aString
	"make a new element with aString. Attributes are same as previous text. Return text, not list item!" 
	| line text |
	line := WebListItem new.
	text := line addText: aString.
	self  add: line.
	^text