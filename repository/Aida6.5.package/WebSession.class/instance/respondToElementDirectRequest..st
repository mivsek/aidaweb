private-serving
respondToElementDirectRequest: aRequest
	"Direct a request to the specified element of a webpage. Element context id and is 
	found in request's Url, like /aidasession/element-id345-ctx35234"
	| stream id ctxId context element |
	stream := aRequest uriString readStream.
	id := (stream upTo: $-;  upToAll: '-ctx') asSymbol.
	ctxId := (stream next; upToEnd) asInteger.
	context := self lastApp contexts at: ctxId.
	element := context elementId: id.
	^element aidaPresenterFor: aRequest on: self