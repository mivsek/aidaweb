accessing
resourceFor: aRequest
	"returns a resource (domain object) to respond to that request"
	| url | 
	url := AIDASite convertFromWeb: aRequest uriString on: aRequest session.  "for international Urls"
	^self objectOnUrl: url