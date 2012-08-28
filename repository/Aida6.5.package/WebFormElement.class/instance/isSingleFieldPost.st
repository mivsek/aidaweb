private-events
isSingleFieldPost
	"is field Ajax posted immediatelly after change, as single one, not entire form"
	^self otherAt: #singleFieldPost ifAbsent: [false]