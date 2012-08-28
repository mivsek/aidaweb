accessing
editField
	"for in-place editor demo"
	editField isNil ifTrue: [^'Click me to edit!'].
	^editField