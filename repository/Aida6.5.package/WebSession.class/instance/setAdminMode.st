session modes
setAdminMode
	"set session to admin mode"
	self user inAdminGroup ifFalse: [^self error: 'user not in Admininistrators group'].
	self otherAt: #sessionMode put: #admin