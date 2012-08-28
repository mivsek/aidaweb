settings
urgentNotificationEMail

	"an email address or addresses (separated by comma) of all recipients of urgent server notifications "

	^self settings  at: #urgentNotificationEMail ifAbsentPut: ['janko.mivsek@eranova.si'].