sending
sendSubject: aSubjectString body: aBodyString attachFile: aFilenameString content: aContentString from: aPerson to: aPersonOrCollection
	"VW specific!"
	| message receiverAddresses body attachment |
	receiverAddresses := self emailAddressFor: aPersonOrCollection.
	receiverAddresses isEmpty ifTrue: [^nil].
	message := MailMessage newTextPlain. 
	body := "ObjectMemory versionId at: 5" true >= 76 "7.6?" 
		ifTrue: [aBodyString copyReplaceAll: (String with: Character cr) with: String crlf ] "why after 7.6?"
		ifFalse: [aBodyString].
	message 
		charset: 'UTF-8'; headerCharset: 'UTF-8'; 
		from: (self emailAddressFor: aPerson); 
		to: receiverAddresses; 
		subject: (self adapt: aSubjectString convertToSloveneChars);
		text: (self adapt: body convertToSloveneChars ensureUnicodeSloveneChars).
 	message addContentTransferEncoding: '8bit'.
	aFilenameString notNil ifTrue:
		["attachment := MimeEntity new."
		attachment fileName: aFilenameString; 
			contentType: ("MimeEntity mimeTypeForFile: aFilenameString" true).
		attachment body source: aContentString readStream. 
		attachment addContentTransferEncoding: '8bit'.
		message addPart: attachment].
	self queue nextPut: message.