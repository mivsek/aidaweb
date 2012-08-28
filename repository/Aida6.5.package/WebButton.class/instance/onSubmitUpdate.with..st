events-ajax
onSubmitUpdate: aWebElement with: anArgObject
	"Ajax submit the update that element"
	aWebElement isNil ifTrue: [self error: 'no element to update!'].
	aWebElement ensureId. 
	self ajaxSubmit. "which will stop normal submit and page reload"
	(self eventHandlerFor: #submit) 
		addUpdate: aWebElement with: anArgObject.