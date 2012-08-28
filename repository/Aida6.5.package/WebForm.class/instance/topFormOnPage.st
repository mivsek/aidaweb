accessing
topFormOnPage
	"returns the first, top form in the whole page"
	self isTopFormOnPage ifTrue: [^self].
	^self context first form