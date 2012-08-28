accessing
addFirstPageWithDescription: aString
	| firstPage assoc firstPageTitle |
	firstPage := self app observee parent defaultPage.
	assoc := self app observee parent pages associations detect: [:each | each value == firstPage].
	firstPageTitle := assoc key.
	self addPage: firstPageTitle description: aString