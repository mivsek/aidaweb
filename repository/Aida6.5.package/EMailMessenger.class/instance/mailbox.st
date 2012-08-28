accessing
mailbox
	mailbox isNil ifTrue: [self initMailbox].
	^mailbox