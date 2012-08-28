error notifying
notifyNoCommiting

	"if there is no odb commit for more than 10min then an e-mail message is sent to a 
	specified address (from settings in WebServer)"
	"WebTransactionMonitor notifyNoCommiting"



	| subject body |

	self isNotificationSent ifTrue: [^self].
"
	subject := 'AIDAWeb Urgent: No odb commit!'.
	body := 'No commit for more than 10 minutes!'.
	WebServer default urgentEMailSubject: subject body: body.
"
	self setNotificationSent.