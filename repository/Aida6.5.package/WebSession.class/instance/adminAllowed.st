security-login
adminAllowed
	"check if general administration is allowed for user on our session"
	^self site securityManager
		isUser: self user
		inGroupNamed: self site securityManager adminGroup name