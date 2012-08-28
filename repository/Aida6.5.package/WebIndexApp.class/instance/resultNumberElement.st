views-elements
resultNumberElement
	| e start end |
	e := WebElement new.
	(self results size = 0) ifTrue: [e addTextSmall: '<b>0 hits</b>'. ^e].
	(self results size = 1) ifTrue: [e addTextSmall: '<b>1 hit</b>'. ^e].
	start := (self page-1)*self resultsOnPage+1.
	(start+self resultsOnPage > self results size)
		ifTrue: [end := self results size]
		ifFalse: [end := start+self resultsOnPage-1].
	e cell addTextSmall: ('<b>', start printString, ' - ', end printString, ' from ', self results size printString, ' hits</b>').
	^e