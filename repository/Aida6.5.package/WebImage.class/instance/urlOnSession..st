private
urlOnSession: aSession
	self image isNil ifTrue: [^''].
	self image isString ifTrue: [^self image].
	(self image isKindOf: WebLiveImage) ifTrue: [^self urlForLiveImageOn: aSession].
	(self image isKindOf: WebMethodImage) ifTrue: [^self urlForMethodImageOn: aSession].
	^aSession site urlResolver halfUrlFor: self image.