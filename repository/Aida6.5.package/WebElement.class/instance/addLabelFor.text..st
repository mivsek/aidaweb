adding form elements
addLabelFor: anElementOrId text: aString
	"<label> tag  defines a label for related input element"
	^self add: 
		(WebLabel newFor: anElementOrId text: aString)