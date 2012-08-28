settings
setDefaultAuthenticator
	"DefaultAuthenticator authentificates the user during login by username and password, which 
	are stored locally in site's security manager"
	^self addSystemService: (DefaultAuthenticator newOn: self) named: #Authenticator