support
json: aString parseToDict: aValue
	"parse string and check if equal to value"
	| parsedValue |
	parsedValue := WebJSON parse: aString.
	self assert: parsedValue class == Dictionary.
	self assert: parsedValue keys size = aValue keys size.
	parsedValue keysAndValuesDo: [:key :value |
		self assert: (aValue at: key) = value]