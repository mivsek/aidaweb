layout-navigation
navigationBarElement
	| e |
	e := WebElement newId: #navigation.
	e add: self navBarMainLinksElement.
	self navBarDemosIn: e.
	e add: self navBarAdminElement.
"	e add: self navBarSearchElement."
"	e add: self navBarContactElement. "
	^e