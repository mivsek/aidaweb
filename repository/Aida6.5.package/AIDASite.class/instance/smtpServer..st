settings
smtpServer: anAddressString
	"an address of email server for outgoing mails (notifications, mailing lists etc.)"
	self settings  at: #smtpServer put: anAddressString.