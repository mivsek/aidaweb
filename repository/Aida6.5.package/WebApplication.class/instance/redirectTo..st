redirection
redirectTo: anObjectOrUrlString
	"redirect browser to a default view for specified object or url link"
	anObjectOrUrlString isNil ifTrue: [^self error: 'redirection target is nil!'].
	self session redirectLink: (WebLink text:'' linkTo: anObjectOrUrlString).