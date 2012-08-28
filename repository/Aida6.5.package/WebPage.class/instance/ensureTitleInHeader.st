private-streaming
ensureTitleInHeader
	| app htitle |
	app := self app. app ifNil: [^nil].
	htitle := self headers detect: [:assoc | assoc key = 'title'] ifNone: [nil].
	(app title aidaIsAssociation or:  [app title isEmpty]) ifTrue: [^nil].
	htitle isNil
		ifTrue: [self addTitle: app title]
		ifFalse: [htitle value: app title]