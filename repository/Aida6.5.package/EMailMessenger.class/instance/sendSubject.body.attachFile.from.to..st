sending
sendSubject: aSubjectString body: aBodyString attachFile: aFilename from: aPerson to: aPersonOrCollection
	"VW specific"
	| message receiverAddresses body |
	receiverAddresses := self emailAddressFor: aPersonOrCollection.
	receiverAddresses isEmpty ifTrue: [^nil].
	message := Net.MailMessage newTextPlain. 
	body := (ObjectMemory versionId at: 5) >= 76 "7.6?" 
		ifTrue: [aBodyString copyReplaceAll: (String with: Character cr) with: String crlf ] "why after 7.6?"
		ifFalse: [aBodyString].
	message 
		charset: 'UTF-8'; headerCharset: 'UTF-8'; 
		from: (self emailAddressFor: aPerson); 
		to: receiverAddresses; 
		subject: (self adapt: aSubjectString convertToSloveneChars);
		text: (self adapt: body convertToSloveneChars ensureUnicodeSloveneChars).
 	message addContentTransferEncoding: '8bit'.
	message addFileAttachment: aFilename .
	self queue nextPut: message.