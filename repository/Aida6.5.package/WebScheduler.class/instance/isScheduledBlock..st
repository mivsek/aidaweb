testing
isScheduledBlock: aBlock
	"is this block aready scheduled in some event?"
	^self queue contains: [:event | event block = aBlock]