timeout
isWakeupTimeout
	"more that one hour since last prefech?"
	"why refresh every hour?"
	| last |
	last := self session userValues at: #wakeupRichEditorTimestamp ifAbsent: [^true].
	^SpTimestamp now asSeconds - last asSeconds > 3600