printing-elements
lockIconTitled: aString
	| e |
	e := WebElement new.
	e addNbSp; add:
		((WebImage png: #lockSmallPng) title: aString).
	^e