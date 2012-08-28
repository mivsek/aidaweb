views
viewCopyToClipboard
	"put this refrence to web clipboard"
	| result |
	result := self resultWithHash: (self session lastRequest queryAt: 'uuid').
	result notNil ifTrue: [(result aidaWebAppFor: self session) copyToClipboard].
	^self redirectToView: #results "to have an url without view=paste"