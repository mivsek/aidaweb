events-ajax
update
	"basic elements don't need to be recreated, just stream them to HTML with changed attributes again"
	self id isNil ifTrue: [self error: 'web element to update must have id in advance, use #ensureId !'].
	self prepareToHtmlStreamingOn: self session. "to prepare again"
	self session queueUpdateElement: self. "send immediatelly via WebSocket if open, or in Ajax response"
	^self