events-ajax
onBlurUpdate: anElement with: anArgObject
	"after field looses focus, update anElement by calling its creation method with an argument "
	anElement isNil ifTrue: [self error: 'no element to update!'].
	anElement ensureId. 
	(self existScriptForEvent: #blur) ifFalse:
		[self onChange: (self scriptForEvent: #blur context: self context)].
	(self eventHandlerFor: #blur) 
		addUpdate: anElement with: anArgObject.