accessing
uuid
	"unique identifier "
	^self otherAt: #uuid ifAbsentPut: [(AIDASite random next * 1000000000) rounded printString]