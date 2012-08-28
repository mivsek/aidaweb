layout-navigation
navBarMainLinksElement
	| e |
	e := (WebElement newClass: #navdiv)
		add: (self navHeader: ' AIDA LINKS' bullet: #bulletSquareDownTranspWhiteGif);
		add: (WebList newUnordered
			addLinkTo: 'http://www.aidaweb.si' text: 'Website';
			addLinkTo: 'http://www.aidaweb.si/tutorial.html' text: 'Tutorial';
			addLinkTo: 'http://www.aidaweb.si/documentation.html' text: 'Documentation';
			addLinkTo: 'http://www.aidaweb.si/screenshots.html' text: 'Screenshots';
			addLinkTo: 'http://www.aidaweb.si/community.html' text: 'Community';
			yourself);
		yourself. 
	^e