settings
urgentNotificationEMail: anEMailAddressString
	"an email address or addresses (separated by comma) of all recipients of urgent server notifications "
	self settings  at: #urgentNotificationEMail put: anEMailAddressString.