validation
validationBlock: aBlock
	"block must return true to validate a value, which is argument of that block"
	"example block: [:value | value class = Date ] "
	validationBlock := aBlock