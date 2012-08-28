accessing
webUser: aWebUser
	"a parallel WebUser for web server security etc."
	self otherAt: #WebUser put: aWebUser.
	(aWebUser otherAt: #Person) ~= self ifTrue: [aWebUser person: self].