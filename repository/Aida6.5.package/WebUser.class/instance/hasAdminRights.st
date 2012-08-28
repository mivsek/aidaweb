security
hasAdminRights
	"Admin is every member of Administrators group which rights are escalated to admin rights. 
	Default Admin user is always regarded as 'escalated to admin' and is therefore admin by default "
	self isAdminUser ifTrue: [^true].
	^self inAdminGroup 
		and: [self isEscalatedToAdmin]