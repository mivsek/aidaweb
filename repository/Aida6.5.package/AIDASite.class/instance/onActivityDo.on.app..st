statistics
onActivityDo: aBlock on: aWebElement app: aWebApplication
	"register a block to be executed on activity on this site. With 1s period if very frequent"
	(self activityAnnouncers at: aWebApplication ifAbsentPut: Dictionary new)
		at: aWebElement id  put: aBlock

" AIDASite allInstances do: [:site | site initActivityAnnouncers] "