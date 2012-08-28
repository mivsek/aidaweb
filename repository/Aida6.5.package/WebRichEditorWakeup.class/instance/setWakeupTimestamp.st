timeout
setWakeupTimestamp
	"store in user's session when last wakeup was done"
	self session userValues at: #wakeupRichEditorTimestamp put: SpTimestamp now.
