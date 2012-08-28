indexing
reindexNonIndexedObjects
	"all text/html objects are reindexed"
	self allWebPages keysDo: [:object |
		(object aidaContentType = 'text/html') ifTrue:
			[(self site index indexedObjects includesKey: object) ifFalse:
				[self site index indexObject: object] ] ]

"URLResolver default reindexNonIndexedObjects"