receiving
getMailDocument
	"returns appropriate Document, like ReceivedInvoice with atachments"
	| message type |
	message := self getMailMessage.
	type := self getDocTypeOfMessage: message.
	type = #XMLSloSimpleInvoice 
		ifTrue: [^ReceivedInvoice fromMailMessage: message on: self repository].
	^nil

"(AIDASite named: 'biart') repository messenger getMailDocument "