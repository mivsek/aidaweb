layout
pageFrameWideNoNavigationWith: aWebElement title: aTitleString printHeader: aHeaderElement
	"set a web page just with header and wide element below"
	| e containerId |
	self app title: (self enhancedTitle: aTitleString). self htmlHeaderElements.
"	self app	add: self headerBanner. "
	containerId := aHeaderElement elements notEmpty ifTrue: [#containerPadded] ifFalse: [#container].
	e := (WebElement newId: containerId)
		add: self headerElement; 	add: self headerDashboard;
		add: ((WebElement newId: #contentWide)
			add: aWebElement; yourself);
		yourself.
	^self app 
		add: aHeaderElement; "print header"
		add: e; yourself