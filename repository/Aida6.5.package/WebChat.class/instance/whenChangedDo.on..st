changes
whenChangedDo: aBlock on: aWebApplication
	"register a block to be executed when new chat line was entered"
	self announcers at: aWebApplication put: aBlock