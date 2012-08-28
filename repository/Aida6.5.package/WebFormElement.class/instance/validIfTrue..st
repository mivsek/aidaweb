validation
validIfTrue: aBlock
	"set the validation block to this form element . It accepts a value as argument and It must return true if entered 
	value is regarded as valid"
	"example for month verification block: [:value | value asInteger between: 1 and: 12 ] "
	self adaptor validationBlock: aBlock