initialize-release
initPopupStub
	self elements first isStubElement ifTrue: [^nil].
	self elements addFirst: 
		(WebStubElement newOn: self firstContextFromStack)