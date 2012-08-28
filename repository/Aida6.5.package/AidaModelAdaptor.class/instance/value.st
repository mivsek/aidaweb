accessing
value
	self isAspectAdaptor ifTrue: [^self subject perform: self aspect].
	self isIndexAdaptor ifTrue: [^self subject at: self index]