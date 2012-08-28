private
saveValue: aValue
	self isAspectAdaptor ifTrue: [self subject perform: (self aspect asString, ':') asSymbol with: aValue].
	self isIndexAdaptor ifTrue: [self subject at: self index put: aValue]