sending
sendSubject: aSubjectString body: aBodyString icalName: anICalNameString content: anICalString from: aPerson to: aPersonOrCollection
	"VW specific"
	| message receiverAddresses body iCalString attachment |
	receiverAddresses := self emailAddressFor: aPersonOrCollection.
	receiverAddresses isEmpty ifTrue: [^nil].
	body := (ObjectMemory versionId at: 5) >= 76 "7.6?"  
			"SystemUtils version"  " SystemUtils.SystemVersionName"
		ifTrue: [aBodyString copyReplaceAll: (String with: Character cr) with: String crlf ] "why after 7.6?"
		ifFalse: [aBodyString].
	message := Net.MailMessage new. 
	message 
		charset: 'UTF-8'; headerCharset: 'UTF-8'; 
		from: (self emailAddressFor: aPerson); 
		to: receiverAddresses; 
		subject: (self adapt: aSubjectString convertToSloveneChars);
		text: (self adapt: body convertToSloveneChars ensureUnicodeSloveneChars).
 	message addContentTransferEncoding: 'base64' "'8bit'".
	anICalNameString notNil ifTrue:
		[attachment := Net.MimeEntity new.
		attachment 
"			fileName: anICalNameString; "
			contentType: ('text/calendar; method=REQUEST; charset=UTF-8; name=', 
				anICalNameString);
"			contentDisposition: 'attachment'. "
			contentDisposition: 'inline'. "Lotus Notes 6.5 requests inline, does not recognize attachment! "
		iCalString := (ObjectMemory versionId at: 5) >= 76 "7.6?" 
			ifTrue: [anICalString copyReplaceAll: (String with: Character cr) with: String crlf ] "why after 7.6?"
			ifFalse: [anICalString].
		attachment body source: iCalString readStream. 
		attachment addContentTransferEncoding: '7bit'.
		message addPart: attachment].
	self queue nextPut: message.