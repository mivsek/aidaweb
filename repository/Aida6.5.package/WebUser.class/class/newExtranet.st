instance creation
newExtranet
	"a common extranet user, for easier setup of access rights"
	^self new
		name: self extranetName;
		surname: self extranetSurname;
		email: self extranetEMail;
		username: self extranetUsername;
		password: self extranetPassword