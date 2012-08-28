private-versions
versionFromRequest: aRequest
	"for Ajax requests too!"
	| version |
	version := aRequest queryAt: 'version'.
	version isNil ifTrue:
		[aRequest isAjaxRequest ifFalse: [^nil].
		version := aRequest isPost
			ifTrue: [(aRequest postDataAt: 'version') value]
			ifFalse: [aRequest queryAt: 'version'] ].
	^version