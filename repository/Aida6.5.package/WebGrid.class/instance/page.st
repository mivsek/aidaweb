private
page
	"number of a page currently shown"
	page isNil ifTrue: [self page: 1].
	^page