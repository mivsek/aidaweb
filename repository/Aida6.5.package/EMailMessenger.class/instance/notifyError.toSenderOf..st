private-error reports
notifyError: anErrorString toSenderOf: aRFC822Message
	"VW specific"
	| msg address |
	msg := Net.MailMessage newTextPlain.
	address := aRFC822Message from notEmpty
		ifTrue: [aRFC822Message from first]
		ifFalse: [''].
	msg 
		subject: 'BiArt: Napaka pri dostavljanju e-pos^te';
		text:  (self messageForError: anErrorString for: aRFC822Message);
		from: address; to: address.
	self privSendMessage: msg reportError: #nomore "try to send only once! "