setup parameters
inlinePopups
	"popup windows shown inline?"
	^self otherAt: #inlinePopups ifAbsent: [self defaultInlinePopups]