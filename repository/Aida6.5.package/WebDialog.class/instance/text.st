accessing
text
	"text to be written on a dialog, like a confirmation question"
	text isNil ifTrue: [^''].
	^text