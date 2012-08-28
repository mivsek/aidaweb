validation
errorElement
	"this element is Ajax updated wit an error text in case of validation failure. Call it only once!"
	"Styling is determined in DefaultWebStyle>>css321Validation. Red background by default"
	| e already |
	already := self otherAt: #ErrorElementAlready ifAbsent: [false].
	already ifTrue: [self error: 'Use validation error element only once!'].
	self otherAt: #ErrorElementAlready put: true.
	e := self otherAt: #ErrorElement ifAbsentPut: [self defaultErrorElement]. "instance of WebValidationError"
	self onChangeUpdate: e.
	^e