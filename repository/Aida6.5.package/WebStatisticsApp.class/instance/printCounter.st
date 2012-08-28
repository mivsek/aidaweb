views-elements
printCounter
	| e count |
	e := WebElement new.
	count := self firstPageCountTotal.
	e addText: '<font face="arial, helvetica"> <b>'; 	addText: count printDotString; addText: '</b></font>'.
	^e.