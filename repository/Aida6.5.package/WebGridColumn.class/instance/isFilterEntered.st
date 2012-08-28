testing
isFilterEntered
	"filter criteria is entered"
	^self filter notNil and: [self filter trimBlanks notEmpty].