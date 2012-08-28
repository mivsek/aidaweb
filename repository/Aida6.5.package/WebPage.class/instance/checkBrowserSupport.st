initialize-release
checkBrowserSupport
	"if browser not supported then set a warning message in red on top of page"
	self session isBrowserSupported ifTrue: [^self warningMessage: nil].
"	Transcript cr; show: '*** browser not supported: ', self session lastRequest userAgent, ' ',
		self site name, ' ', self session user nameSurname.
" "		show: self app session lastRequest printString; cr;
		show: '       user: ', self session user nameSurname; cr."

	self warningMessage: '<b>Your browser is too old.</b><br> Please install the newest version, recommended browsers are <a href="http://www.mozilla.com/firefox/">Firefox</a>, <a href="http://www.opera.com/">Opera</a> or <a href="http://www.google.com/chrome">Chrome</a>'