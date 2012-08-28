private-indexing
reportIndexingOf: anObject
	| text site |
	[text := anObject class name.
	site := [anObject repository site name] on: Error do: [:ex | ''].
	(anObject isKindOf: Document) ifTrue: 
		[text := text, ' "', anObject title asSloveneWithoutCircumflexes,  '" on ', site.
		anObject modifiedBy notNil ifTrue:
			[text := text, ' by ', anObject modifiedBy nameSurname asSloveneWithoutCircumflexes] ].
	(anObject isKindOf: FileProxy) ifTrue: 
		[text := text, ' "', anObject filename asString, '" on ', anObject site name].
	Transcript cr; show: '(indexing  ', text, ')']
		fork. "to prevent stoping indexer in case of error"