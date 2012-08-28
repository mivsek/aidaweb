redirection
redirectTo: anObjectOrUrlString view: aSymbol
	"redirect browser to a specified view for specified object or url link"
	anObjectOrUrlString isNil ifTrue: [^self error: 'redirection target is nil!'].
	self session redirectLink: (WebLink text:'' linkTo: anObjectOrUrlString view: aSymbol).