layout
pageFrameWith: aWebElement wide: aWideElement title: aTitleString printHeader: aPrintHeaderElement
	"set a web page with standard  page look (navigation bar, header) "
	"Wide element comes below content besides navigation and it have full page width"
	"printHeader if exist is added first, out of all other elements"
	| e containerId |
	self app title: (self enhancedTitle: aTitleString). self htmlHeaderElements.
"	self app	add: self headerBanner. "
	containerId := aPrintHeaderElement elements notEmpty ifTrue: [#containerPadded] ifFalse: [#container].
	e := (WebElement newId: containerId)
		add: self headerElement; 	add: self headerDashboard;
		add: ((WebElement newId: #content) 
			add: self navigationBarElement; add: aWebElement;  yourself); 
		add: ((WebElement newId: #contentWide)
			add: aWideElement; yourself);
		yourself.
	^self app 
		add: aPrintHeaderElement; "print header"
		add: e; yourself