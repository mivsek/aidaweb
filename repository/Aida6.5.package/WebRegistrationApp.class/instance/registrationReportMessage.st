emailing
registrationReportMessage
	| text |
	text := 'New user just registered on http://', self site host, ':

	name:       ', self user nameSurname, '
	username:   ', self user username, '
	country:    ', self user country, '
	email:      ', self user email, '
	profile:    ', (self site urlResolver fullUrlFor: self user on: nil).
	^text