accessing
at: key put: value
	"this one should be used by translation tools!"
	"This method is called by WebInlineEditableText widget after the text change is posted. See 
       WebText>>#prepareForTranslation, how the aspect of this widget is prepared to achieve that."
	self changes add: key.
	self dict at: key put: value.
	self writeChanges. "immediatelly after each change, for now"
	^value