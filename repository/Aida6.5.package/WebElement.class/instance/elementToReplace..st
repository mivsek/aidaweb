private-events
elementToReplace: aWebElement
	"For now used for popup windows, where we don't update itself but replace an empty stub element"
	^self otherAt: #ElementToReplace put: aWebElement