private
isWebElement: anObject


	" test if anObject is a web element, such as web app and write warning to the transcript"
	
	(anObject isKindOf: WebElement) ifTrue:
		[Transcript cr; show: '*** WARNING: URLResolver detected a ', 
		anObject class printString, '  will be registered ***'; cr.

		"to detect from where this request comes"
		"self halt"
		].