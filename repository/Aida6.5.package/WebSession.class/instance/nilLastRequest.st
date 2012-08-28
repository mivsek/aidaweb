initialize-release
nilLastRequest
	self other notNil ifTrue: [self other removeKey: #lastRequest ifAbsent: [nil] ]