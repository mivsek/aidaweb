clipboard
pasteFromClipboard
	"get a DocLink with title and url. Nil if clipboard empty"
	self clipboard isEmpty ifTrue: [^nil].
	^self clipboard asDocLink