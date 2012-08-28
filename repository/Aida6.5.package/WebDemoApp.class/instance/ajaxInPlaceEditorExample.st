views-ajax
ajaxInPlaceEditorExample
	| e |
	e := WebElement new.
	e addTextH4: 'Example: In-place editor example'.
	e addText: 'Click text below to edit it'. e addBreak.
"	e addInPlaceEditableTextAspect: #editField for: self observee." "that's shorter way"
	e add: ((WebInPlaceEditableText aspect: #editField for: self observee)
		triggerElement: ((WebImage gif: #buttonEditGif) title: 'Edit this text') ). "image to enter edit"
	^e