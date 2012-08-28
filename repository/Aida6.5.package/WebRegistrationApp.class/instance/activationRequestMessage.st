emailing
activationRequestMessage
	| text |
	text := 'Please click on the link below to activate your account on http://', self site host, '

', (self site urlResolver fullUrlFor: self class on: nil), '?view=activate&uuid=', self newUser uuid.
	^text