support
json: aString parseTo: aValue
	"parse string and check if equal to value"
	| parsedValue |
	parsedValue := WebJSON parse: aString.
	self assert: parsedValue = aValue.