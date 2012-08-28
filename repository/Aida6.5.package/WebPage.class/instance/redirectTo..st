redirects
redirectTo: anObjectOrUrlString
	"send to browser a command to reload current page with this object or Url"
	| link cmd |
	link := WebLink text:'' linkTo: anObjectOrUrlString.
	cmd := WebCommand newLoadUrl: (link composeURLOn: self session).
	self session queueCommand: cmd