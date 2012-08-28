instance creation
newAdmin
	^self new
		name: self adminName;
		surname: self adminSurname;
		email: self adminEMail;
		username: self adminUsername;
		password: self adminPassword