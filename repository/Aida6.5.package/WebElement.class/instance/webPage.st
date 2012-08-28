accessing
webPage
	"find a WebPage up in the hierarchy on which this element belongs"
	^(self parent notNil and: [self parent isWebElement])
		ifTrue: [self parent webPage]
		ifFalse: [nil]