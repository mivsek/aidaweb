private-serving
streamHtmlTo: aStream for: aRequest on: aSession
	"stream content of method resource to a response"
	| response relUrl content |
	response := aRequest streamedResponse.
	relUrl := aRequest urlString copyFrom: self baseUrl size+1 to: aRequest urlString size.
	content := self perform: (self urlToMethodMap at: relUrl) first.
	((content class ~= ByteString) and: [content isKindOf: String]) "TwoByte or WideString"
		ifTrue: [content := AIDASite convert: content toCodepage: #UTF8].
	response 
		length: content size; "to stream on HTTP/1.0 too, because chunking is not allowed"
		contentType: (self urlToMethodMap at: relUrl) last;
		expires: (SpTimestamp fromSeconds: (SpTimestamp now asSeconds + (3600*24))). "one day"
	response nextPutAll: content.
	response close.