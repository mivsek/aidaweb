accessing-other
logoutFromUrl: aString
	"From which page user logout. To be redirected back after login"
	^self otherAt: #LogoutFromUrl put: aString