views-ajax
ajaxTimeElement
	| e |
	e := WebElement newSpan.
	e style: '{background-color: #eee }'.
	e addTextBold: SpDate today shortPrintSloString, ' ', SpTimestamp now asTime printSecSloString. 
	^e