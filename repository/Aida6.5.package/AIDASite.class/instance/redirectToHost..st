settings
redirectToHost: aHostnameString
	"if set, all requests are redirected to that hostname!"
	self settings  at: #redirectToHost put: aHostnameString