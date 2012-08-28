attributes
ensureId
	"ensure that this element has Id and register it in the context"
	self id isNil ifTrue: [self registerId].