adding ajax components
addRichEditorAspect: aSymbol for: anObject size: aPoint
	"JavaScript HTML WYSIWYG editor instead of textarea"
	^self add: ((WebRichEditor new aspect:  aSymbol for: anObject) size: aPoint)