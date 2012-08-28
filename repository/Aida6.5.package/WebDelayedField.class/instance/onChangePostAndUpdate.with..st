events-ajax
onChangePostAndUpdate: anElement with: anArgObject
	"on key up, not on change we send a #change event with a delay after last event! "
	anElement isNil ifTrue: [self error: 'no element to update!'].
	anElement ensureId. 
	self onChangePost.
	(self eventHandlerFor: #change)
		addUpdate: anElement with: anArgObject.