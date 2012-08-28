settings
registrationAllowed: aBoolean
	"is registration allowed on this site? By default no"
	^self settings at: #RegistrationAllowed put: aBoolean