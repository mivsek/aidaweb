private-accessing
oldestDate

	"return a date of oldest version of value"

	self dates isEmpty
		ifTrue: [^nil]
		ifFalse: 	[^self dates first]
	

"History new oldestDate"