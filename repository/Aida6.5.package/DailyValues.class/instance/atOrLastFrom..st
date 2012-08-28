adding-removing
atOrLastFrom: aDate
	"return value on that date or last date when some value exist"
	^self at: aDate ifAbsent: [self lastFrom: aDate]