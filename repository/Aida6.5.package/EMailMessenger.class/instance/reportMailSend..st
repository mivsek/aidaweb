private-sending
reportMailSend: aRFC822Message
	| receiver subject |
	receiver := aRFC822Message toSendStrings first.
	(receiver includes: $<) ifTrue: [receiver := receiver readStream upTo: $<; upTo: $>].
	subject := aRFC822Message subject asSloveneWithoutCircumflexes contractTo: 40.
	Transcript cr; show: 'e-mail sent to: ', receiver, ' ', subject
		.