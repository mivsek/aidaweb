layout
pageFrameWideNoNavigationWith: aWebElement title: aTitleString
	"set a web page just with header and wide element below"
	| e |
	self app title: (self enhancedTitle: aTitleString). self htmlHeaderElements.
"	self app	add: self headerBanner. "
	e := (WebElement newId: #container)
		add: self headerElement; 	add: self headerDashboard;
		add: ((WebElement newId: #contentWide)
			add: aWebElement; yourself);
		yourself.
	^self app add: e; yourself