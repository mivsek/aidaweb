redirection
redirectOrigin
	"this is an URL from where the redirection request originates. Used for returning back from
	exception page, for example when you want to see page without access rights, then you are
	redirected to login page. after successfull login, you are redirected back to intended page.
	Redirect origin is set up automatically by redirectLink: request."
	^self otherAt: #redirectOrigin