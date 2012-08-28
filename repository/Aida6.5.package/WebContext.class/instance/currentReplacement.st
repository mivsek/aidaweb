private-ids
currentReplacement
	"an old element to be replaced with a new one"
	^self replacementAnnouncements at:  Processor activeProcess ifAbsent: [nil]