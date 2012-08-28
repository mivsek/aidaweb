redirects
redirectTo: anObject view: aViewSymbol
	"send to browser a command to reload current page with this object and view"
	| link cmd |
	link := WebLink text:'' linkTo: anObject view: aViewSymbol.
	cmd := WebCommand newLoadUrl: (link composeURLOn: self session).
	self session queueCommand: cmd