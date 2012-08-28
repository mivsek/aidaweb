aspect adapting
acceptFileAttributesFrom: aRequest field: aString
	| mutator |
	self filenameAspect notNil ifTrue:
		[| filename |
		mutator := (self filenameAspect asString, ':') asSymbol.
		filename := AIDASite convert: (aRequest postDataAt: aString) filenameWithoutPath fromCodepage: self session codePage.
		self object perform: mutator with: filename].
	self contentTypeAspect notNil ifTrue:
		[mutator := (self contentTypeAspect asString, ':') asSymbol.
		self object perform: mutator with: (aRequest postDataAt: aString) contentType]