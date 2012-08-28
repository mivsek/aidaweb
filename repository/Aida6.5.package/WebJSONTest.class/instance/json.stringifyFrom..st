support
json: aString stringifyFrom: aValue
	"serialize value and check if equal to json string"
	| jsonString |
	jsonString := WebJSON stringify: aValue.
	self assert: jsonString = aString.