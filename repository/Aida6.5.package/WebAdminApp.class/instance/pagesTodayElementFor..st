views-sites
pagesTodayElementFor: aSite
	"real-time display of last activity timestamp"
	| e  |
	e := WebElement newDiv.
	e addText: aSite allPagesToday printDotString.
	self green: e ifActive: aSite. "flash for a while then stay green for one hour"
	aSite onActivityDo: [e updateWith: aSite] on: e app: self.
	^e