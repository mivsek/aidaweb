accessing-other
logoutFromUrl
	"From which page user logout. To be redirected back after login"
	^self otherAt: #LogoutFromUrl ifAbsent: [nil].