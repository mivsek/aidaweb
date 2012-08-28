layout-navigation
navBarContactElement
	| e |
	e := (WebElement newClass: #navdiv)
		add: (self navLinkTo: 'mailto:info@eranova.si' 
			header: 'info@eranova.si' bullet: #bulletLetterTranspWhiteGif);
		yourself. 
	^e