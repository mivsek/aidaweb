testing
isTagHidden
	"form tag is not shown at all"
	^self otherAt: #FormTagHidden ifAbsent: [false]