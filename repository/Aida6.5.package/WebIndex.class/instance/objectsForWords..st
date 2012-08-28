searching
objectsForWords: aString
	"find all objects, which include one or more specified words. return a sorted collection 
	of associations with found objects as keys an relevance of them as values. Most relevant 
	objects are first. Relevance means: 
		nr. of words found * 1000 + occurences of each word"
	| words hits newHits foundWords |
	Transcript show: ' search.'.
	words := (self wordsInText: aString) keys.
	words := words select: [:word | self isValidWord: word].
	hits := IdentityDictionary new.
	foundWords := OrderedCollection new. 
	words do: [:word | 
		newHits := self objectsForWord: word.
		newHits notEmpty ifTrue: [foundWords add: word].
		newHits keysAndValuesDo: [:key :value |
			(hits includesKey: key)
				ifTrue: [hits at: key put: (hits at: key)+1000]
				ifFalse: [hits at: key put: 1000+value] ] ].
	self countPopularWords: foundWords.  "count as popular only words, which exist in objects"
	self addFreshnessRelevance: hits.
	Transcript show: '.ok '.
	^SortedCollection withAll: hits associations sortBlock: [:first : second | first value > second value].

"
WebIndex instance objectsForWords: 'ljub'
"