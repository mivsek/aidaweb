events-ajax
onSubmitDo: aBlock
	"execute that block when this button is pressed and after form is Ajax posted"
	self ajaxSubmit.
	(self eventHandlerFor: #submit) 
		addActionBlock: aBlock.