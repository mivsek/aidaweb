attributes
width: aNumber
	"set the width of a cell. If nil, then cell automaticaly addjust itself. 
	If number is between 0 and 1 then width is percent of table width. 
	If number above 1 then width in pixels"
	| text |
	text := aNumber <= 1 
			ifTrue: [(aNumber * 100) asInteger printString, '%']
			ifFalse: [aNumber asInteger printString].
	self attributesAt: #width put: text