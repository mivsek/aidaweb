accessing-doctypes
isHTML5
	"is page in HTML5?"
	^self otherAt: #HTML5 ifAbsent: [false]