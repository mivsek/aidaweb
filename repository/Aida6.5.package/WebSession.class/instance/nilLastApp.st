initialize-release
nilLastApp
	self other notNil ifTrue: [self other removeKey: #lastApp ifAbsent: [nil] ]