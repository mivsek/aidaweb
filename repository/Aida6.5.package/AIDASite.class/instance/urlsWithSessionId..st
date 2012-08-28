settings
urlsWithSessionId: aBoolean
	"is session id added to urls when browser cookie support is disabled?"
	(aBoolean isKindOf: Boolean) ifFalse: [self error: 'wrong argument'].
	^self settings at: #urlsWithSessionId put: aBoolean