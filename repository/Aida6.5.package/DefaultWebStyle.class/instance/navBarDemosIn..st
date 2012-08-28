layout-navigation
navBarDemosIn: e
	"Squeak specific"
	| list |
	list := WebList newUnordered.
	list
		addLinkTo: self site demo	text: 'Introduction' view: #main; 
"		addLinkTo: self site demo	text: 'Image gallery' view: #imageGallery; "
"		addLinkTo: self site demo	text: 'Live image' view: #liveImage;  " "Squeak specific"
"		addLinkTo: self site demo text: 'File upload' view: #fileUpload; "
"		addLinkTo: self site demo text: 'Calendar' view: #calendar;  "
		addLinkTo: self site demo text: 'Grid, tabs, menus' view: #grid; 
"		addLinkTo: self site demo text: 'Javascript' view: #javascript;  "
		addLinkTo: self site demo text: 'Ajax' view: #ajax;
		addLinkTo: self site demo text: 'Widgets, popups' view: #widgets.
	self site contextProcesses ifTrue: 
		[list addLinkTo: self site demo text: 'Control flow' view: #controlFlow].
"	list addLinkTo: self site demo text: 'Rich Editor' view: #richEditor.  "
	e add: ((WebElement newClass: #navdiv)
		add: (self navHeader: ' DEMOS' bullet: #bulletStarTranspWhiteGif);
		add: list;
		yourself)