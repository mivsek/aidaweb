session modes
setDevMode
	"set session to developers mode"
	self user inAdminGroup ifFalse: [^self error: 'user not Admin!'].
	self otherAt: #sessionMode put: #dev