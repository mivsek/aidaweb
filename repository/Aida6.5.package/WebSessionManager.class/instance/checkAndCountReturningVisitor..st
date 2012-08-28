private
checkAndCountReturningVisitor: aSession
	"returning visitor is those who is not active more than 1h"
	(aSession isActive not and: [aSession requests size > 1]) ifTrue:
		[self site critical: [self site returningVisitorsCounter incCounter] ]