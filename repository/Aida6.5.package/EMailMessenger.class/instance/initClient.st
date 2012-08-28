initialize-release
initClient
	client := self class smtpClientClass host: self repository emailSMTPServer.
	self repository emailSMTPUsername trimBlanks notEmpty ifTrue:
		[client username: self repository emailSMTPUsername.
		client user password: self repository emailSMTPPassword.]