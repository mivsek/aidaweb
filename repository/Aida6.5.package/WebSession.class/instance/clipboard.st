accessing-other
clipboard
	"for cut/copy/paste references to web pages to easier hyperlink them"
	^self otherAt: #clipboard ifAbsent: [self initClipboard].