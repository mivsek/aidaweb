receiving
dealWithDocument: aDocument
	aDocument isReceivedInvoice ifFalse: [^nil].
	(self alreadyExist: aDocument) ifTrue: [^nil].
	aDocument issuer addInvoice: aDocument