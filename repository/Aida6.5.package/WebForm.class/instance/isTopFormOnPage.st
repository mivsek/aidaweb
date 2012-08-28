testing
isTopFormOnPage
	"top form on the whole page"
	^self isTopForm and: [self parent isWebPage]