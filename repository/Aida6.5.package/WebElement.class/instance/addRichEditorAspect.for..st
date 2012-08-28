adding ajax components
addRichEditorAspect: aSymbol for: anObject
	"JavaScript HTML WYSIWYG editor instead of textarea"
	^self add: (WebRichEditor new aspect:  aSymbol for: anObject)