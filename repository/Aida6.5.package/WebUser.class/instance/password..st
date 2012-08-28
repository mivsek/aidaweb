accessing
password: aString	
	"Store hashed string"
	aString notEmpty ifTrue: [
		password := WebSecurityManager hashPassword: aString]