handling
pageUrlFrom: aRequest
	"An url of page on which this realtime connection is open. From query part of url"
	| url |
	(aRequest queryAt: 'pageurl') isNil ifTrue: [^nil].
	url := (aRequest queryAt: 'pageurl') readStream upTo: $? .
	^url readStream upTo: $#