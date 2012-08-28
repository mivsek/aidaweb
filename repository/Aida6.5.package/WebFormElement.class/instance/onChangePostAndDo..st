events-actions
onChangePostAndDo: aBlock
	"execute that block when this form field is changed"
	self onChangePost.	
	(self eventHandlerFor: #change) 
		addActionBlock: aBlock.