events-ajax
onSubmitAnswer: anObject
	"answer anObject as result when button is clicked and form submitted.Answer to the currenty executing context."
	"Answer is copied to parent context when widget and therefore context is closed"
	"Part of tree-like control flow, see WebDemoApp for example "
	self ajaxSubmit.
	(self eventHandlerFor: #submit) 
		addAnswer: anObject.