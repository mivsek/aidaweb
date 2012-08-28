initialize-release
initMailbox
	mailbox notNil ifTrue: [mailbox stopFetchingMail].
	mailbox := AIDA.Mailbox new.
	mailbox 
		username: self repository emailPOP3Username;
		password: self repository emailPOP3Password;
		server: self repository emailPOP3Server.
	mailbox 	startFetchingMail