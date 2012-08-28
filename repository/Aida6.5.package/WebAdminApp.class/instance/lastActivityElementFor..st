views-sites
lastActivityElementFor: aSite
	"real-time display of last activity timestamp"
	| e  |
	e := WebElement newDiv. 
	e addText: aSite lastRequestTimestampText.
	aSite onActivityDo: [e updateWith: aSite] on: e app: self.
	^e