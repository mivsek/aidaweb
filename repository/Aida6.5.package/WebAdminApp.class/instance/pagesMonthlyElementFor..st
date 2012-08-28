views-sites
pagesMonthlyElementFor: aSite
	"real-time display of last activity timestamp"
	| e  |
	e := WebElement newDiv.
	e addText: aSite allPagesThisMonth printDotString.
	aSite onActivityDo: [e updateWith: aSite] on: e app: self.
	^e