adding-removing
releaseApplicationState
	"release all application state of sessions"
	^self allSessions do: [:each | each releaseApplicationState].