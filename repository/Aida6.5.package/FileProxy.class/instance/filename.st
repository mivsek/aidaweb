accessing
filename
	| separator |
	separator := SpEnvironment onUnix ifTrue: ['/'] ifFalse: ['\'].
	(filename isKindOf: SpFilename) ifTrue: [self filename: filename].
	filename isNil ifTrue: [^''].
	SpEnvironment onUnix   "needed in case of migration to other OS"
		ifTrue: [(filename includes: $\ ) ifTrue: 
			[filename := filename copyReplaceAll: '\' with: '/'] ]
		ifFalse: [(filename includes: $/ ) ifTrue: 
			[filename := filename copyReplaceAll: '/' with: '\'] ].
	^SpFilename named:
		(self site homeDirectory, 
			(filename 
				copyReplaceAll: (self site homeDirectory copyReplaceAll: '.', separator with: '')
				with: ''))