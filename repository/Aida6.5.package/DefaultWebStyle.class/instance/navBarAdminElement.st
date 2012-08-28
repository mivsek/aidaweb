layout-navigation
navBarAdminElement
	| e |
	self app user hasAdminRights ifFalse: [^WebElement new]. 
	e := (WebElement newClass: #navdiv)
		add: (self navHeader: ' ADMIN' bullet: #bulletManTranspWhiteGif);
		add: (WebList newUnordered
			addLinkTo: self site admin text: 'Login' view: 'login'; 
			addLinkTo: self site admin text: 'Logout'  view: 'logout'; 
"			addLinkTo: self site admin text: 'Sites' view: 'sites';  "
			addLinkTo: self site admin text: 'Settings' view: 'settings'; 
			addLinkTo: self site securityManager text: "#en->" 'Security';
			addLinkTo: self site admin text: 'Uptime' view: 'serverStatistics'; 
			addLinkTo: self site statistics text: 'Statistics';
"			addLinkTo: self site admin text: 'Tests' view: #tests;"
			yourself);
		yourself.
	^e