security
escalateToAdmin
	"escalate access rights of that use to admin rights, if user is in Administrators group"
	"WebSecurityManager default adminGroup users do: [:each | each escalateToAdmin] "
	self inAdminGroup ifFalse: [self error: 'User to escalate must be in Admin group'].
	self otherAt: #EscalatedToAdmin put: true.