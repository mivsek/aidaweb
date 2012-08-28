views-sites
pagesWeeklyElementFor: aSite
	"real-time display of last activity timestamp"
	| e  |
	e := WebElement newDiv.
	e addText: aSite allPagesThisWeek printDotString.
	aSite onActivityDo: [e updateWith: aSite] on: e app: self.
	^e