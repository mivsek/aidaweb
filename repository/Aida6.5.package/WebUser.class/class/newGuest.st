instance creation
newGuest
	^self new
		name: self guestName;
		surname: self guestSurname;
		email: self guestEMail;
		username: self guestUsername;
		password: self guestPassword