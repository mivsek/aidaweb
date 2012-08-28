layout
pageFrameWith: aWebElement wide: aWideElement title: aTitleString
	"set a web page with standard  page look (navigation bar, header) "
	"Wide element comes below content besides navigation and it have full page width"
	| e |
	self app title: aTitleString.
	e := WebElement new
		add: self headerElement; 	
		add: (WebElement new add: self navigationBarElement; add: aWebElement;  yourself); 
		add: (WebElement new add: aWideElement; yourself);
		yourself.
	^self app add: e; yourself