private
countNewVisitor
	self site critical:
		[self site newVisitorsCounter incCounter]