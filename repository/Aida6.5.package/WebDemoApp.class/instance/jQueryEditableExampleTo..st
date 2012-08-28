views-jquery
jQueryEditableExampleTo: e
	e cell colspan: 2; addTextH4: 'Example: jQuery in-place editable field with data from server'. e newRow.
	e addText: 'Click text below to edit it'. e addBreak.
"	e addInPlaceEditableTextAspect: #editField for: self observee." "that's shorter way"
	e add: ((WebInPlaceEditable2Text aspect: #editField for: self observee)
		triggerElement: ((WebImage gif: #buttonEditGif) title: 'Edit this text') ). "image to enter edit"
	^e