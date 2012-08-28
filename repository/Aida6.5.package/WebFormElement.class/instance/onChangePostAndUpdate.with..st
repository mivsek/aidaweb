events-ajax
onChangePostAndUpdate: anElement with: anArgObject
	"after field change, post contents to server and AJAX update anElement  with a parameter"
	anElement isNil ifTrue: [self error: 'no element to update!'].
	anElement ensureId. 
	self onChangePost.	
	(self eventHandlerFor: #change)
		addUpdate: anElement with: anArgObject.