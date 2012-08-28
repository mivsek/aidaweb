handling
pageViewFrom: aRequest
	"A view on which this realtime connection is open. From query part of url"
	"Sqeak specific"
	| query pview |
	(aRequest queryAt: 'pageurl') isNil ifTrue: [^nil].
	query := (aRequest queryAt: 'pageurl') readStream upTo: $? ; upToEnd.
	query := (query readStream upTo: $# ) trimBlanks. "skip #anchor if any"
	(query isEmpty or: [(query includesSubString: 'view=') not ]) ifTrue: [^#main].
	pview := query readStream upToAll: 'view';  skip: 1  "="; upTo: $& . "Squeak specific"
	 ^pview asSymbol