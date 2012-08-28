accessing
page
	"return current result page number to show. Each page shows 10 hits"
	page isNil ifTrue: [self page: 1].
	^page