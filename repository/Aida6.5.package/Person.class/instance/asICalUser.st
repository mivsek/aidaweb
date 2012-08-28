accessing
asICalUser
	^ICUser new
		commonName: self nameSurname  asSloveneWithoutCircumflexes "Outlook!" ;
		emailAddress: self email