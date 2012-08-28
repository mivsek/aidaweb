receiving
startReceiving
	"start receiving documents from e-mail account"
	| block doc |
"	self mailbox startFetchingMail. "
"temporary off, not yet migrated! "	
"	self receivingLoop notNil ifTrue: [self stopReceiving].
	block := 
		[ [true] whileTrue: 
			[doc := self getMailDocument.
			self dealWithDocument: doc] ].
	self receivingLoop: block fork."