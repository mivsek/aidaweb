private-ajax
isFirstInMethod
	"is this element created as first one in its creation method?"
	^(self otherAt: #firstInMethod ifAbsent: [false])