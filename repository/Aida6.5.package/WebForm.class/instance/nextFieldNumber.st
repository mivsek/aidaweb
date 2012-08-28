private-fields
nextFieldNumber
	"for unique numbering of fields on all form hierachy on the whole page" 
	| number |
	number := self otherAt: #NextFieldNumber ifAbsentPut: [0].
	number := number + 1.
	self otherAt: #NextFieldNumber put: number.
	^number