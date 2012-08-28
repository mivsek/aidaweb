routing
resourceFor: aRequest
	"it routes a request to appropriate handler, which returns a resource to respond to request"
	| url resource  | 
	url := AIDASite convertFromWeb: aRequest uriString on: aRequest session.  "for international Urls"
	self routes do: [:route |
		(route key "url pattern" match: url) ifTrue: 
			[resource := route value "handler" resourceFor: aRequest.
			resource notNil ifTrue: [^resource] ] ].
	^nil "no route to resource for that request"