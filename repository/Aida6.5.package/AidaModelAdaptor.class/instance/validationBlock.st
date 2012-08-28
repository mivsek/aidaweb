validation
validationBlock
	"block must return true to validate a value, which is argument of that block"
	"example block: [:value | value class = Date ] "
"	validationBlock isNil ifTrue: [self initDefaultValidationBlock]. " "leave nil to avoid unecessary garbage"
	^validationBlock