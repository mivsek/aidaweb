receiving
getDocTypeOfMessage: aMailMessage
	"for now only Mobitel's XML invoices"
	aMailMessage attachments size = 3 ifFalse: [^nil].
	('E-racun za opravljene storitve Mobitel*' match: aMailMessage subject) 
		ifTrue:  [^#XMLSloSimpleInvoice].
	('*e-racun@mobitel.si*' match: aMailMessage from first asLowercase) ifTrue: [^#XMLSloSimpleInvoice].
	^nil