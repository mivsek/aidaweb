events-ajax
onClickUpdate: anElement with: anArgObject
	"Update a specified element from server (Ajax) with calling the element's creation method with an argument"
	"Creation method must be able to receive a parameter. For instance: #propertiesElementShow: aBoolean "
	anElement isNil ifTrue: [self error: 'no element to update!'].
	anElement ensureId. 
	(self existScriptForEvent: 'click') ifFalse: "only one script per event!"
		[self onClick: (self scriptForEvent: #click context: self context)].
	(self eventHandlerFor: #click) 
		addUpdate: anElement with: anArgObject.