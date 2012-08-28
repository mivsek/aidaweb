events-ajax
onClickPopup: anElement thenUpdate: anElementToUpdate
	"popup a specified element (can be also a WebWidget) with fresh content from server (AJAX) in a 
       new window on the same page. Update anElementToUpdate after popup window is closed"
	| ctx |
	self ensureId. anElement ensureId.
	ctx := self context.
	anElementToUpdate notNil ifTrue: 
		[anElementToUpdate ensureId.
		anElement afterCloseUpdate: anElementToUpdate]. "will be copied ot popup window"
	(self existScriptForEvent: 'click') ifFalse: "only one script per event!"
		[self onClick: (self scriptForEvent: #click context: self context)].
	(self eventHandlerFor: #click) 
		addPopup: anElement onStub: ctx window popupStub.
	self setWindowPopupRequested.