initialize-release
initDefaultSettings

	self host: 'newsite' ip: '127.0.0.1'  port: 8888.  "this is usable for tests only"
"	self homeDirectory: self defaultHomeDirectory. " "rather lazy init, because of platform issues"
"	self helpDirectory: self defaultHelpDirectory. " "rather lazy init, because of platform issues"
	self helpURL: '/help'.
	self styleClass: 'DefaultWebStyle'.
	self diagnostics: false.
	self loggingPolicy: #none.
	self countingPolicy: #all.
	self smtpServer: self ip.
	self urgentNotificationEMail: 'info@eranova.si'.