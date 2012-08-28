security
unEscalateFromAdmin
	"cancel escalation of that user from admin rights"
	self isEscalatedToAdmin ifTrue:
		[self otherAt: #EscalatedToAdmin put: false].