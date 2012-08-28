releasing state
removeYourself
	" .. from session manager"
	self parent notNil ifTrue: [self parent removeSession: self].
	self releaseApplicationState.
	self parent: nil.