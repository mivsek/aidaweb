accessing
someId
	"just return some text, possibly surnameName"
	self surnameName trimBlanks notEmpty ifTrue: [^self surnameName].
	self email notEmpty ifTrue: [^self email].
	^'----'