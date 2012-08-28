support
json: andArrayOfStrings stringifyFromDict: aValue
	"serialize value and check if equal to one of json strings"
	| jsonString |
	jsonString := WebJSON stringify: aValue.
	self assert: (andArrayOfStrings includes: (jsonString copyWithout: $ ))