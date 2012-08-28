views-sites
pagesAllElementFor: aSite
	"real-time display of last activity timestamp"
	| e  |
	e := WebElement newDiv.
	e addText: aSite allPages printDotString.
	aSite onActivityDo: [e updateWith: aSite] on: e app: self.
	^e