accessing
adaptor
	adaptor isNil ifTrue: [self initNullAdaptor]. "not yet connected to model, jsut to hold a value"
	^adaptor