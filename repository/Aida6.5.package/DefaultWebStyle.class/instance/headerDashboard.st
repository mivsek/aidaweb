layout
headerDashboard
	"login, font size selection, etc"
	^(WebElement newId: #dashboard)
		add: self headerLogin;
		add: ((WebElement newId: #switcher)
			addHelpLink; addNbSp;
			addGif: #textFontSizeGif size: 54@15; 
			addLinkTo: '/' gif: #textSizeSmallGif title: 'Small font size' size: 16@15; 
			addLinkTo: '/' gif: #textSizeMediumGif title: 'Medium font size' size: 16@15; 
			addLinkTo: '/' gif: #textSizeLargeGif title: 'Large font size' size: 16@15; 
			yourself);
"		add: (WebElement new style: '{flow: right}'; addGif: #cornerDashboardRightGif; yourself);"
		yourself