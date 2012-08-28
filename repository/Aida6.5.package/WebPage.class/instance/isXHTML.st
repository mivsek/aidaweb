accessing-doctypes
isXHTML
	"is page in XHTML?"
	^self otherAt: #XHTML ifAbsent: [false]