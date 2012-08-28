settings
registrationAllowed
	"is registration allowed on this site? By default no"
	^self settings at: #RegistrationAllowed ifAbsent: [false]