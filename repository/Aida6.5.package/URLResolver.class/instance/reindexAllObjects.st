indexing
reindexAllObjects
	"all text/html objects are reindexed"
	self allWebPages keysDo: [:object |
		(object aidaContentType = 'text/html') ifTrue:
			[self site index indexObject: object] ]

"URLResolver default reindexAllObjects"