private-referers
addNewReferer: anUrlString

	"add new counter to referers dictionary"

	self referers 
		at: anUrlString
		put: WebCounter new.