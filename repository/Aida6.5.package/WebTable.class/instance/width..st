attributes
width: aNumber
	"set the width of entire table If nil, then table automaticaly addjust itself. 
	If number is between 0 and 1 then width is percent of document width.
	If number above 1 then width in pixels"
	| text |
	text := aNumber <= 1 
			ifTrue: [(aNumber * 100) asInteger printString, '%']
			ifFalse: [aNumber asInteger printString].
	self attributesAt: #width put: text