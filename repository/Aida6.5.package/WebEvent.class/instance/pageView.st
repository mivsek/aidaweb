accessing
pageView
	"get the view from the Url"
	| query view |
	query := self pageUrl readStream upTo: $? ; upToEnd.
	query := (query readStream upTo: $# ) trimBlanks. "skip #anchor if any"
	(query isEmpty or: [(query includesSubString: 'view=') not ]) ifTrue: [^#main].
	view := query readStream upToAll: 'view';  skip: 5 "view="; upTo: $& .
	 ^view asSymbol