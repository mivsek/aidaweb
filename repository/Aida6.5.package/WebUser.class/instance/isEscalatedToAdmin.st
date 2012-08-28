security
isEscalatedToAdmin
	"escalate access rights of that use to admin rights, if user is in Admin group"
	^self otherAt: #EscalatedToAdmin ifAbsent: [false]