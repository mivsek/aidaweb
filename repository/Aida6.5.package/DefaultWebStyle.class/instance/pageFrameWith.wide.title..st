layout
pageFrameWith: aWebElement wide: aWideElement title: aTitleString
	"set a web page with standard  page look (navigation bar, header) "
	"Wide element comes below content besides navigation and it have full page width"
	| e |
	self app title: (self enhancedTitle: aTitleString). self htmlHeaderElements.
"	self app	add: self headerBanner. "
	e := (WebElement newId: #container)
		add: self headerElement; 	add: self headerDashboard;
		add: ((WebElement newId: #content) 
			add: self navigationBarElement; add: aWebElement;  yourself); 
		add: ((WebElement newId: #contentWide)
			add: aWideElement; yourself);
		yourself.
	^self app add: e; yourself