settings
urlsWithSessionId
	"is session id added to urls when browser cookie support is disabled?"
	^self settings at: #urlsWithSessionId ifAbsentPut: false