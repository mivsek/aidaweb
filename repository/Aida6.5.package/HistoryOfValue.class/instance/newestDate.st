private-accessing
newestDate

	"return a date of newest version of value"

	self dates isEmpty
		ifTrue: [^nil]
		ifFalse: 	[^Date fromDays: self dates last]

"History new newestDate"