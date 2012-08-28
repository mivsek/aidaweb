private
person: aPerson
	"connect to parrallel Person from Party framework"
	self otherAt: #Person put: aPerson.
	aPerson asWebUser ~= self ifTrue: [aPerson webUser: self].