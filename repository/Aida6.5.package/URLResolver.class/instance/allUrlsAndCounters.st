request counting
allUrlsAndCounters
	"return copies of all counters as dictionary with url as key"
	| dictionary |
	dictionary := Dictionary new.
	self counters keysAndValuesDo: [:object :counter |
		dictionary 
			at: (self halfUrlFor: object)
			put: counter aidaDeepCopy].
	^dictionary

"URLResolver default allUrlsAndCounters"
"
(BinaryObjectStorage onNew: 'counters.boss' asFilename writeStream)
	nextPut: URLResolver default allUrlsAndCounters;
	close
"