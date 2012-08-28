scripts-components
richEditorCssResource
	" for JavaScript rich text editor, see WebRichEditor"
	"WebStyle new richEditorCssResource"
	^self resources at: #cssRichEditor ifAbsentPut:
		[WebMethodResource 
			fromMethod: #richEditorStyleSheet on: self 
			contentType: 'text/css' preferedUrl: '/rich-editor.css' site: self site].