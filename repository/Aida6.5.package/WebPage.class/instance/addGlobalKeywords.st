header elements
addGlobalKeywords
	"global keywords to all pages on this website"
	| app |
	app := self firstAppFromStack.
	(app isNil or: [app site keywords isEmpty]) ifTrue: [^nil].
	self addMetaKeywords: app site keywords