searching
objectsForWord: aString
	"find all objects, which include this word. Return a dictionary with objects as 
       keys and weights as values" 
	"only current versions of versioned object like documents!"
	| objDict |
	objDict := self privObjectsForWord: aString.
	objDict := objDict keysDo: [:object | 
		((object isKindOf: VersionedObject) and: [object isCurrentVersion not])
			ifTrue: [objDict removeKey: object] ].
	^objDict

"(WebIndex default objectsForWord: 'knjiga') keys "