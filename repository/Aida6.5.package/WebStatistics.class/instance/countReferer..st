private-referers
countReferer: anUrlString
	| url |
	url := self prepareReferer: anUrlString.
	url isEmpty ifTrue: [^self].
	(self refererOnStopList: url) ifTrue: [^self].
	(self referers includesKey: url)
		ifFalse: [self addNewReferer: url].
	(self referers at: url) incCounter