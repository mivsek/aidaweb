private-counters
incNotFoundCounter

	"call this after each request is processed"


	self critical:
		[self notFoundCounter incCounter].