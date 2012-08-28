private-streaming
streamHtmlTo: aStream for: aRequest on: aSession
	"stream content of method resource to a response"
	| response content |
	response := aRequest streamedResponse.
	content := self object perform: self method.
	response length: content size. "to stream on HTTP/1.0 too, because chunking is not allowed"
	self site addResponseHeadersTo: response forPage: self on: aSession.
	response nextPutAll: (AIDASite properArray: content). "in case of TwoByteString or Array"
	response close.