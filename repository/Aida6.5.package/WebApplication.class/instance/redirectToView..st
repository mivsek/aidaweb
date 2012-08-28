redirection
redirectToView: aSymbol
	"redirect browser to a different view for same observee"
	| target |
	target := self observee notNil 
		ifTrue: [self observee] 
		ifFalse: [self class].  "standalone App without link to domain model. Class! "
	self session redirectLink: (WebLink text:'' linkTo: target view: aSymbol).