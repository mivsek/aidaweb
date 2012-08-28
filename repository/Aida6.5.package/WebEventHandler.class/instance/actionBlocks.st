private
actionBlocks
	actionBlocks isNil ifTrue: [self initActionBlocks].
	^actionBlocks