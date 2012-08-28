private-events
updateArgument
	"an argument for an element update call, if any"
	^self otherAt: #UpdateArgument ifAbsent: [nil]